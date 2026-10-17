import '../../../../core/services/settings_service.dart';
import '../../../../core/utils/india_gst.dart';
import 'gst_report_models.dart';

class GstReportValidator {
  const GstReportValidator._();

  static GstValidationResult validate({
    required GstReportData data,
    required AppSettings settings,
    required GstReportType tab,
    bool requireReturnPeriod = false,
  }) {
    final issues = <GstReportIssue>[];
    final businessGstin = normalizeGstin(settings.taxId);

    if (tab == GstReportType.gstr1 || tab == GstReportType.gstr3b) {
      if (businessGstin.isEmpty) {
        issues.add(const GstReportIssue(
          severity: GstIssueSeverity.error,
          code: 'BUSINESS_GSTIN_REQUIRED',
          message:
              'Enter the business GSTIN in Settings before a GST JSON export.',
        ));
      } else if (!isValidGstin(businessGstin)) {
        issues.add(const GstReportIssue(
          severity: GstIssueSeverity.error,
          code: 'BUSINESS_GSTIN_INVALID',
          message:
              'The business GSTIN is not valid. Check its state code and checksum.',
        ));
      }
      if (settings.businessName.trim().isEmpty ||
          settings.businessAddress.trim().isEmpty ||
          settings.businessState.trim().isEmpty) {
        issues.add(const GstReportIssue(
          severity: GstIssueSeverity.error,
          code: 'BUSINESS_DETAILS_REQUIRED',
          message:
              'Business name, address and state are required for a GST return export.',
        ));
      }
    } else if (businessGstin.isEmpty) {
      issues.add(const GstReportIssue(
        severity: GstIssueSeverity.warning,
        code: 'BUSINESS_GSTIN_MISSING',
        message:
            'Add the business GSTIN in Settings to make exported reports complete.',
      ));
    }

    if (requireReturnPeriod && !data.startDate.isSameMonth(data.endDate)) {
      issues.add(const GstReportIssue(
        severity: GstIssueSeverity.error,
        code: 'MULTI_PERIOD_RETURN',
        message:
            'A return JSON export must cover one calendar tax period only.',
      ));
    }

    if (data.allDocuments.isEmpty) {
      issues.add(const GstReportIssue(
        severity: GstIssueSeverity.warning,
        code: 'NO_DOCUMENTS',
        message: 'There are no documents in the selected period.',
      ));
    }

    for (final document in data.allDocuments) {
      if (tab == GstReportType.gstr1 &&
          document.direction != GstRecordDirection.sale) {
        continue;
      }
      _validateDocument(document, issues, settings, tab);
    }

    if (tab == GstReportType.gstr3b && data.purchaseSummary.totalTax > 0) {
      issues.add(const GstReportIssue(
        severity: GstIssueSeverity.warning,
        code: 'ITC_RECONCILIATION_REQUIRED',
        message:
            'Purchase tax is captured locally only. Reconcile with GSTR-2B and eligibility rules before entering 3B ITC.',
      ));
    }

    if (tab == GstReportType.gstr1) {
      issues.add(const GstReportIssue(
        severity: GstIssueSeverity.warning,
        code: 'PORTAL_SCHEMA_REVIEW',
        message:
            'Confirm the current GST Portal offline schema and tax-period instructions before filing this JSON.',
      ));
    }

    return GstValidationResult(issues);
  }

  static GstValidationResult validateDocument(
    GstDocumentRecord document, {
    required AppSettings settings,
    GstReportType tab = GstReportType.gstr1,
  }) {
    final issues = <GstReportIssue>[];
    _validateDocument(document, issues, settings, tab);
    return GstValidationResult(issues);
  }

  static void _validateDocument(
    GstDocumentRecord document,
    List<GstReportIssue> issues,
    AppSettings settings,
    GstReportType tab,
  ) {
    final documentNumber = document.documentNumber.trim();
    if (documentNumber.isEmpty) {
      _error(issues, 'DOCUMENT_NUMBER_REQUIRED', 'Document number is required.',
          document);
    }
    if (document.lines.isEmpty) {
      _error(issues, 'LINES_REQUIRED',
          'Document must contain at least one line item.', document);
    }

    final partyGstin = document.partyGstin;
    if (partyGstin != null &&
        partyGstin.isNotEmpty &&
        !isValidGstin(partyGstin)) {
      _error(
          issues, 'PARTY_GSTIN_INVALID', 'Party GSTIN is not valid.', document);
    }
    if (document.partyName.trim().isEmpty) {
      _error(
          issues, 'PARTY_NAME_REQUIRED', 'Party name is required.', document);
    }

    if (document.direction == GstRecordDirection.sale &&
        document.isGstDocument &&
        (document.placeOfSupplyState == null ||
            document.placeOfSupplyCode == null)) {
      _error(issues, 'PLACE_OF_SUPPLY_REQUIRED',
          'Place of supply is required for a GST document.', document);
    }

    final settingsState = settings.businessState.trim();
    final expectedInterState = _isInterStateFromStates(
      settingsState,
      document.placeOfSupplyState ?? document.partyState,
    );
    if (document.isGstDocument &&
        document.direction == GstRecordDirection.sale) {
      final hasIgst = document.documentIgst > 0.005;
      final hasLocalTax =
          document.documentCgst > 0.005 || document.documentSgst > 0.005;
      if (expectedInterState && hasLocalTax) {
        _error(
          issues,
          'TAX_MODE_MISMATCH',
          'Inter-State supply should not carry CGST/SGST.',
          document,
        );
      }
      if (!expectedInterState && hasIgst) {
        _error(
          issues,
          'TAX_MODE_MISMATCH',
          'Intra-State supply should not carry IGST.',
          document,
        );
      }
    }

    for (final line in document.lines) {
      _validateLine(line, document, issues);
    }

    final calculatedTaxable = document.lines.fold<double>(
      0,
      (total, line) => total + line.taxableValue,
    );
    final calculatedTax = document.lines.fold<double>(
      0,
      (total, line) => total + line.totalTax,
    );
    if ((calculatedTaxable - document.documentTaxableValue).abs() > 0.02 ||
        (calculatedTax - document.totalTax).abs() > 0.02) {
      _error(
        issues,
        'DOCUMENT_TOTAL_MISMATCH',
        'Document totals do not reconcile with its line items.',
        document,
      );
    }
    if ((document.documentTotal -
                (document.documentTaxableValue + document.totalTax))
            .abs() >
        0.02) {
      _error(
        issues,
        'GRAND_TOTAL_MISMATCH',
        'Grand total does not reconcile with taxable value and tax. Check document-level discounts.',
        document,
      );
    }

    if (document.invoiceType == 'export') {
      _error(
        issues,
        'EXPORT_FIELDS_REQUIRED',
        'Export document needs shipping bill, port and export-specific fields before filing.',
        document,
      );
    }

    if (tab == GstReportType.gstr1 &&
        document.direction == GstRecordDirection.sale &&
        document.partyGstin == null &&
        document.isInterState &&
        document.documentTotal >= 100000) {
      _warning(
        issues,
        'B2C_THRESHOLD_REVIEW',
        'Review the current B2C-large threshold and portal schema for this inter-State consumer supply.',
        document,
      );
    }
  }

  static void _validateLine(
    GstLineRecord line,
    GstDocumentRecord document,
    List<GstReportIssue> issues,
  ) {
    if (line.description.trim().isEmpty) {
      _error(issues, 'ITEM_DESCRIPTION_REQUIRED',
          'Item description is required.', document);
    }
    if (line.quantity <= 0 || !line.quantity.isFinite) {
      _error(issues, 'QUANTITY_INVALID', 'Quantity must be greater than zero.',
          document);
    }
    if (line.unitPrice < 0 || line.taxableValue < 0 || line.totalTax < 0) {
      _error(issues, 'NEGATIVE_VALUE',
          'Tax and value fields cannot be negative.', document);
    }
    if (line.gstRate < 0 || line.gstRate > 100) {
      _error(issues, 'GST_RATE_INVALID',
          'GST rate must be between 0% and 100%.', document);
    }
    if (line.taxableValue > 0 &&
        (line.hsnSac == null || line.hsnSac!.isEmpty)) {
      _error(issues, 'HSN_REQUIRED', 'HSN/SAC is required for a taxable line.',
          document);
    }
    if (!line.quantity.isFinite ||
        !line.taxableValue.isFinite ||
        !line.totalTax.isFinite) {
      _error(issues, 'NON_FINITE_VALUE', 'Tax values must be finite numbers.',
          document);
    }

    final expectedTax = line.taxableValue * line.gstRate / 100;
    if ((expectedTax - (line.cgst + line.sgst + line.igst)).abs() > 0.03 &&
        line.gstRate > 0) {
      _warning(
        issues,
        'LINE_TAX_MATH_REVIEW',
        'Line GST differs from taxable value × GST rate; review rounding or inclusive pricing.',
        document,
      );
    }
  }

  static bool _isInterStateFromStates(String seller, String? placeOfSupply) {
    final sellerCode = gstStateCodeFromState(seller);
    final placeCode = gstStateCodeFromState(placeOfSupply);
    if (sellerCode == null || placeCode == null) return false;
    return sellerCode != placeCode;
  }

  static void _error(
    List<GstReportIssue> issues,
    String code,
    String message,
    GstDocumentRecord document,
  ) {
    issues.add(GstReportIssue(
      severity: GstIssueSeverity.error,
      code: code,
      message: message,
      documentNumber: document.documentNumber,
    ));
  }

  static void _warning(
    List<GstReportIssue> issues,
    String code,
    String message,
    GstDocumentRecord document,
  ) {
    issues.add(GstReportIssue(
      severity: GstIssueSeverity.warning,
      code: code,
      message: message,
      documentNumber: document.documentNumber,
    ));
  }
}

extension on DateTime {
  bool isSameMonth(DateTime other) =>
      year == other.year && month == other.month;
}
