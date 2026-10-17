import 'dart:math' as math;

import '../../../../core/database/schemas/invoice.dart';
import '../../../../core/database/schemas/purchase.dart';
import '../../../../core/utils/india_gst.dart';

enum GstReportType {
  gstr1,
  gstr2,
  gstr3b,
  gstTransaction,
  gstr9,
  hsnSummary,
  sacReport,
}

enum GstDatePreset { thisMonth, lastMonth, currentFinancialYear, custom }

enum GstRecordDirection { sale, purchase }

enum GstIssueSeverity { error, warning }

class GstReportFilter {
  final DateTime startDate;
  final DateTime endDate;
  final String searchQuery;
  final GstReportType tab;
  final GstDatePreset preset;

  const GstReportFilter({
    required this.startDate,
    required this.endDate,
    this.searchQuery = '',
    this.tab = GstReportType.gstr1,
    this.preset = GstDatePreset.thisMonth,
  });

  GstReportFilter copyWith({
    DateTime? startDate,
    DateTime? endDate,
    String? searchQuery,
    GstReportType? tab,
    GstDatePreset? preset,
  }) {
    return GstReportFilter(
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      searchQuery: searchQuery ?? this.searchQuery,
      tab: tab ?? this.tab,
      preset: preset ?? this.preset,
    );
  }

  String get periodLabel {
    final start = _dateLabel(startDate);
    final end = _dateLabel(endDate);
    return start == end ? start : '$start – $end';
  }

  bool get isSingleCalendarMonth =>
      startDate.year == endDate.year && startDate.month == endDate.month;

  String get returnPeriod {
    final month = endDate.month.toString().padLeft(2, '0');
    return '$month${endDate.year}';
  }

  static String _dateLabel(DateTime date) =>
      '${date.day.toString().padLeft(2, '0')} '
      '${_months[date.month - 1]} ${date.year}';

  static const _months = <String>[
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
}

class GstReportIssue {
  final GstIssueSeverity severity;
  final String code;
  final String message;
  final String? documentNumber;

  const GstReportIssue({
    required this.severity,
    required this.code,
    required this.message,
    this.documentNumber,
  });

  bool get isError => severity == GstIssueSeverity.error;
}

class GstValidationResult {
  final List<GstReportIssue> issues;

  const GstValidationResult(this.issues);

  const GstValidationResult.empty() : issues = const [];

  bool get hasErrors => issues.any((issue) => issue.isError);
  bool get hasWarnings => issues.any((issue) => !issue.isError);
  int get errorCount => issues.where((issue) => issue.isError).length;
  int get warningCount => issues.where((issue) => !issue.isError).length;

  List<GstReportIssue> get errors =>
      issues.where((issue) => issue.isError).toList(growable: false);

  List<GstReportIssue> get warnings =>
      issues.where((issue) => !issue.isError).toList(growable: false);
}

class GstLineRecord {
  final String? itemId;
  final String description;
  final String? hsnSac;
  final String unit;
  final double quantity;
  final double unitPrice;
  final double taxableValue;
  final double gstRate;
  final double cgst;
  final double sgst;
  final double igst;
  final double cessRate;
  final double cess;

  const GstLineRecord({
    this.itemId,
    required this.description,
    required this.hsnSac,
    required this.unit,
    required this.quantity,
    required this.unitPrice,
    required this.taxableValue,
    required this.gstRate,
    required this.cgst,
    required this.sgst,
    required this.igst,
    required this.cessRate,
    required this.cess,
  });

  double get totalTax => cgst + sgst + igst + cess;
  double get totalValue => taxableValue + totalTax;
  double get effectiveRate => gstRate < 0 ? 0 : gstRate;
}

class GstDocumentRecord {
  final String documentNumber;
  final DateTime documentDate;
  final GstRecordDirection direction;
  final String partyName;
  final String? partyGstin;
  final String? partyState;
  final String? placeOfSupplyState;
  final String taxMode;
  final String invoiceType;
  final bool isGstDocument;
  final bool isReverseCharge;
  final String? eInvoiceIrn;
  final List<GstLineRecord> lines;
  final double documentTaxableValue;
  final double documentCgst;
  final double documentSgst;
  final double documentIgst;
  final double documentCess;
  final double documentTotal;
  final String? sourceId;

  const GstDocumentRecord({
    required this.documentNumber,
    required this.documentDate,
    required this.direction,
    required this.partyName,
    required this.partyGstin,
    required this.partyState,
    required this.placeOfSupplyState,
    required this.taxMode,
    required this.invoiceType,
    required this.isGstDocument,
    required this.isReverseCharge,
    required this.eInvoiceIrn,
    required this.lines,
    required this.documentTaxableValue,
    required this.documentCgst,
    required this.documentSgst,
    required this.documentIgst,
    required this.documentCess,
    required this.documentTotal,
    this.sourceId,
  });

  double get totalTax =>
      documentCgst + documentSgst + documentIgst + documentCess;

  bool get isB2B =>
      direction == GstRecordDirection.sale &&
      partyGstin != null &&
      partyGstin!.trim().isNotEmpty;

  bool get isInterState =>
      taxMode == 'inter_state' ||
      taxMode == 'igst' ||
      lines.any((line) => line.igst > 0.005);

  String? get placeOfSupplyCode =>
      gstStateCodeFromState(placeOfSupplyState ?? partyState) ??
      _gstinStateCode(partyGstin);

  static String? _gstinStateCode(String? gstin) {
    if (gstin == null || gstin.trim().length < 2) return null;
    final normalized = normalizeGstin(gstin);
    if (!RegExp(r'^\d{2}').hasMatch(normalized)) return null;
    return normalized.substring(0, 2);
  }
}

class GstTaxSummary {
  final int documentCount;
  final double taxableValue;
  final double cgst;
  final double sgst;
  final double igst;
  final double cess;

  const GstTaxSummary({
    required this.documentCount,
    required this.taxableValue,
    required this.cgst,
    required this.sgst,
    required this.igst,
    required this.cess,
  });

  const GstTaxSummary.zero()
      : documentCount = 0,
        taxableValue = 0,
        cgst = 0,
        sgst = 0,
        igst = 0,
        cess = 0;

  double get totalTax => cgst + sgst + igst + cess;
  double get totalValue => taxableValue + totalTax;

  GstTaxSummary operator +(GstTaxSummary other) {
    return GstTaxSummary(
      documentCount: documentCount + other.documentCount,
      taxableValue: taxableValue + other.taxableValue,
      cgst: cgst + other.cgst,
      sgst: sgst + other.sgst,
      igst: igst + other.igst,
      cess: cess + other.cess,
    );
  }
}

class GstHsnSummary {
  final String hsnSac;
  final String description;
  final String unit;
  final double quantity;
  final double taxableValue;
  final double gstRate;
  final double cgst;
  final double sgst;
  final double igst;
  final double cess;
  final int documentCount;

  const GstHsnSummary({
    required this.hsnSac,
    required this.description,
    required this.unit,
    required this.quantity,
    required this.taxableValue,
    required this.gstRate,
    required this.cgst,
    required this.sgst,
    required this.igst,
    required this.cess,
    required this.documentCount,
  });

  double get totalTax => cgst + sgst + igst + cess;
}

class GstReportData {
  final DateTime startDate;
  final DateTime endDate;
  final List<GstDocumentRecord> sales;
  final List<GstDocumentRecord> purchases;
  final List<GstDocumentRecord> filteredDocuments;
  final GstTaxSummary salesSummary;
  final GstTaxSummary purchaseSummary;
  final List<GstHsnSummary> hsnSummary;

  const GstReportData({
    required this.startDate,
    required this.endDate,
    required this.sales,
    required this.purchases,
    required this.filteredDocuments,
    required this.salesSummary,
    required this.purchaseSummary,
    required this.hsnSummary,
  });

  const GstReportData.empty({
    required this.startDate,
    required this.endDate,
  })  : sales = const [],
        purchases = const [],
        filteredDocuments = const [],
        salesSummary = const GstTaxSummary.zero(),
        purchaseSummary = const GstTaxSummary.zero(),
        hsnSummary = const [];

  List<GstDocumentRecord> get allDocuments =>
      <GstDocumentRecord>[...sales, ...purchases];

  int get b2bCount => sales.where((document) => document.isB2B).length;
  int get b2cCount => sales.where((document) => !document.isB2B).length;
  int get reverseChargePurchaseCount =>
      purchases.where((document) => document.isReverseCharge).length;

  double get outputTax => salesSummary.totalTax;
  double get capturedInputTax => purchaseSummary.totalTax;

  static double _safe(double? value) {
    if (value == null || !value.isFinite || value.isNaN) return 0.0;
    return value;
  }

  List<GstDocumentRecord> get b2bSales =>
      sales.where((document) => document.isB2B).toList(growable: false);

  List<GstDocumentRecord> get b2clSales => sales
      .where((document) =>
          !document.isB2B &&
          document.isInterState &&
          document.documentTotal >= 100000)
      .toList(growable: false);

  List<GstDocumentRecord> get b2csSales => sales
      .where((document) =>
          !document.isB2B &&
          (!document.isInterState || document.documentTotal < 100000))
      .toList(growable: false);

  List<GstDocumentRecord> get exportSales => sales
      .where((document) => document.invoiceType == 'export')
      .toList(growable: false);

  List<GstHsnSummary> get sacSummary => hsnSummary
      .where((summary) => summary.hsnSac.startsWith('99'))
      .toList(growable: false);

  List<GstHsnSummary> get goodsHsnSummary => hsnSummary
      .where((summary) => !summary.hsnSac.startsWith('99'))
      .toList(growable: false);

  factory GstReportData.fromDocuments({
    required DateTime startDate,
    required DateTime endDate,
    required List<Invoice> invoices,
    required List<Purchase> purchases,
    String searchQuery = '',
  }) {
    final sales = invoices
        .map(_saleRecord)
        .where(
            (document) => _inRange(document.documentDate, startDate, endDate))
        .where((document) => _matchesSearch(document, searchQuery))
        .toList(growable: false);
    final purchaseRecords = purchases
        .map(_purchaseRecord)
        .where(
            (document) => _inRange(document.documentDate, startDate, endDate))
        .where((document) => _matchesSearch(document, searchQuery))
        .toList(growable: false);

    return GstReportData(
      startDate: startDate,
      endDate: endDate,
      sales: sales,
      purchases: purchaseRecords,
      filteredDocuments: <GstDocumentRecord>[...sales, ...purchaseRecords]
        ..sort((a, b) => b.documentDate.compareTo(a.documentDate)),
      salesSummary: _summarize(sales),
      purchaseSummary: _summarize(purchaseRecords),
      hsnSummary: _summarizeHsn(sales),
    );
  }

  static GstDocumentRecord _saleRecord(Invoice invoice) {
    final lines = invoice.items.map((line) {
      final qty = _safe(line.quantity);
      final price = _safe(line.unitPrice);
      final rawTaxable = _safe(line.taxableAmount);
      final taxable = rawTaxable > 0 ? rawTaxable : _safe(price * qty);
      return GstLineRecord(
        itemId: line.itemId?.toString(),
        description: line.itemName?.trim() ?? '',
        hsnSac: _clean(line.hsnCode),
        unit: 'Nos',
        quantity: qty,
        unitPrice: price,
        taxableValue: taxable,
        gstRate: _safe(line.gstRate),
        cgst: _safe(line.cgstAmount),
        sgst: _safe(line.sgstAmount),
        igst: _safe(line.igstAmount),
        cessRate: _safe(line.cessRate),
        cess: _safe(line.cessAmount),
      );
    }).toList(growable: false);

    return GstDocumentRecord(
      documentNumber: invoice.invoiceNumber,
      documentDate: invoice.invoiceDate,
      direction: GstRecordDirection.sale,
      partyName: invoice.partyName,
      partyGstin: _clean(invoice.partyGstin),
      partyState: _clean(invoice.partyState),
      placeOfSupplyState: _clean(invoice.placeOfSupplyState),
      taxMode: invoice.taxMode,
      invoiceType: invoice.invoiceType,
      isGstDocument: invoice.isGstInvoice,
      isReverseCharge: invoice.isReverseCharge,
      eInvoiceIrn: _clean(invoice.eInvoiceIrn),
      lines: lines,
      documentTaxableValue: _sum(lines, (line) => line.taxableValue),
      documentCgst: _sum(lines, (line) => line.cgst),
      documentSgst: _sum(lines, (line) => line.sgst),
      documentIgst: _sum(lines, (line) => line.igst),
      documentCess: _sum(lines, (line) => line.cess),
      documentTotal: _safe(invoice.grandTotal),
      sourceId: invoice.id.toString(),
    );
  }

  static GstDocumentRecord _purchaseRecord(Purchase purchase) {
    final lines = purchase.items.map((line) {
      final qty = _safe(line.quantity);
      final rate = _safe(line.rate);
      final discount = _safe(line.discountAmount);
      final rawTaxable = _safe(line.taxableAmount);
      final taxable = rawTaxable > 0
          ? rawTaxable
          : math.max(0.0, qty * rate - discount);
      return GstLineRecord(
        itemId: line.itemId?.toString(),
        description: line.itemName?.trim() ?? '',
        hsnSac: _clean(line.hsnCode),
        unit: line.unit ?? 'Nos',
        quantity: qty,
        unitPrice: rate,
        taxableValue: taxable,
        gstRate: _safe(line.gstRate),
        cgst: _safe(line.cgstAmount),
        sgst: _safe(line.sgstAmount),
        igst: _safe(line.igstAmount),
        cessRate: _safe(line.cessRate),
        cess: _safe(line.cessAmount),
      );
    }).toList(growable: false);

    final hasIgst = lines.any((line) => line.igst > 0.005);
    return GstDocumentRecord(
      documentNumber: purchase.billNumber,
      documentDate: purchase.purchaseDate,
      direction: GstRecordDirection.purchase,
      partyName: purchase.partyName,
      partyGstin: _clean(purchase.partyGstin),
      partyState: _clean(purchase.partyState),
      placeOfSupplyState: _clean(purchase.partyState),
      taxMode: hasIgst ? 'inter_state' : 'intra_state',
      invoiceType: purchase.invoiceType,
      isGstDocument: lines.any((line) => line.gstRate > 0 || line.totalTax > 0),
      isReverseCharge: purchase.isReverseCharge,
      eInvoiceIrn: null,
      lines: lines,
      documentTaxableValue: _sum(lines, (line) => line.taxableValue),
      documentCgst: _sum(lines, (line) => line.cgst),
      documentSgst: _sum(lines, (line) => line.sgst),
      documentIgst: _sum(lines, (line) => line.igst),
      documentCess: _sum(lines, (line) => line.cess),
      documentTotal: _safe(purchase.totalAmount),
      sourceId: purchase.id.toString(),
    );
  }

  static GstTaxSummary _summarize(List<GstDocumentRecord> documents) {
    return GstTaxSummary(
      documentCount: documents.length,
      taxableValue:
          _sum(documents, (document) => document.documentTaxableValue),
      cgst: _sum(documents, (document) => document.documentCgst),
      sgst: _sum(documents, (document) => document.documentSgst),
      igst: _sum(documents, (document) => document.documentIgst),
      cess: _sum(documents, (document) => document.documentCess),
    );
  }

  static List<GstHsnSummary> _summarizeHsn(
    List<GstDocumentRecord> documents,
  ) {
    final buckets = <String, _HsnBucket>{};
    for (final document in documents) {
      for (final line in document.lines) {
        final key = line.hsnSac ?? 'MISSING';
        final bucket = buckets.putIfAbsent(
          key,
          () => _HsnBucket(
            hsnSac: key,
            description: line.description,
            unit: line.unit,
            gstRate: line.effectiveRate,
          ),
        );
        bucket.add(line, document.documentNumber);
      }
    }
    return buckets.values
        .map((bucket) => bucket.toSummary())
        .toList(growable: false)
      ..sort((a, b) => b.taxableValue.compareTo(a.taxableValue));
  }

  /// Returns a strict GST-taxable value for exports. Line values are preferred
  /// because discounts and tax-inclusive pricing are already materialized in
  /// the source document's tax calculation.
  double get salesTaxableValue => salesSummary.taxableValue;

  static bool _inRange(DateTime value, DateTime start, DateTime end) {
    final date = DateTime(value.year, value.month, value.day);
    return !date.isBefore(_day(start)) && !date.isAfter(_day(end));
  }

  static bool _matchesSearch(GstDocumentRecord document, String query) {
    final normalizedQuery = query.trim().toLowerCase();
    if (normalizedQuery.isEmpty) return true;
    final haystack = <String>[
      document.documentNumber,
      document.partyName,
      document.partyGstin ?? '',
      ...document.lines.map((line) => line.description),
      ...document.lines.map((line) => line.hsnSac ?? ''),
    ].join(' ').toLowerCase();
    return haystack.contains(normalizedQuery);
  }

  static DateTime _day(DateTime value) =>
      DateTime(value.year, value.month, value.day);

  static String? _clean(String? value) {
    final trimmed = value?.trim();
    return trimmed == null || trimmed.isEmpty ? null : trimmed;
  }

  static double _sum<T>(Iterable<T> values, double Function(T value) read) {
    return values.fold<double>(0, (total, value) => total + read(value));
  }
}

class _HsnBucket {
  final String hsnSac;
  final String description;
  final String unit;
  final double gstRate;
  double quantity = 0;
  double taxableValue = 0;
  double cgst = 0;
  double sgst = 0;
  double igst = 0;
  double cess = 0;
  final documentNumbers = <String>{};

  _HsnBucket({
    required this.hsnSac,
    required this.description,
    required this.unit,
    required this.gstRate,
  });

  void add(GstLineRecord line, String documentNumber) {
    quantity += line.quantity;
    taxableValue += line.taxableValue;
    cgst += line.cgst;
    sgst += line.sgst;
    igst += line.igst;
    cess += line.cess;
    documentNumbers.add(documentNumber);
  }

  GstHsnSummary toSummary() {
    return GstHsnSummary(
      hsnSac: hsnSac,
      description: description,
      unit: unit,
      quantity: quantity,
      taxableValue: taxableValue,
      gstRate: gstRate,
      cgst: cgst,
      sgst: sgst,
      igst: igst,
      cess: cess,
      documentCount: documentNumbers.length,
    );
  }
}

double money(double value) => double.parse(value.toStringAsFixed(2));

double toleranceRound(double value) => (value.abs() < 0.005) ? 0 : money(value);
