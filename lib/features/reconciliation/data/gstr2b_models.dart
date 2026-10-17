import '../../../core/database/schemas/purchase.dart';

/// Represents a GSTR-2B invoice entry
class Gstr2bInvoice {
  final String invoiceNumber;
  final DateTime invoiceDate;
  final String supplierName;
  final String supplierGstin;
  final double taxableValue;
  final double totalTax;
  final String invoiceType;
  final bool itcAvailable;
  final ImsAction imsAction;
  final String? remarks;

  Gstr2bInvoice({
    required this.invoiceNumber,
    required this.invoiceDate,
    required this.supplierName,
    required this.supplierGstin,
    required this.taxableValue,
    required this.totalTax,
    required this.invoiceType,
    required this.itcAvailable,
    required this.imsAction,
    this.remarks,
  });

  factory Gstr2bInvoice.fromJson(Map<String, dynamic> json) {
    return Gstr2bInvoice(
      invoiceNumber: json['invoiceNumber'] as String,
      invoiceDate: DateTime.parse(json['invoiceDate'] as String),
      supplierName: json['supplierName'] as String,
      supplierGstin: json['supplierGstin'] as String,
      taxableValue: (json['taxableValue'] as num).toDouble(),
      totalTax: (json['totalTax'] as num).toDouble(),
      invoiceType: json['invoiceType'] as String,
      itcAvailable: json['itcAvailable'] as bool,
      imsAction: ImsAction.values.firstWhere(
        (e) => e.toString().split('.').last == json['imsAction'],
        orElse: () => ImsAction.none,
      ),
      remarks: json['remarks'] as String?,
    );
  }
}

/// Represents the status of IMS (Input Tax Credit) action
enum ImsAction {
  none,
  accepted,
  rejected,
  pending,
}

/// Represents the result of reconciliation between GSTR-2B and Purchase register
class ReconciliationResult {
  final Gstr2bInvoice? gstr2b;
  final Purchase? purchase;
  final MatchStatus status;
  final String remarks;

  ReconciliationResult({
    required this.gstr2b,
    required this.purchase,
    required this.status,
    required this.remarks,
  });
}

/// Represents the status of a reconciliation match
enum MatchStatus {
  matched,
  mismatched,
  missingInBooks,
  missingIn2b,
}

/// Represents the summary of reconciliation results
class ReconciliationSummary {
  final int totalIn2b;
  final int totalInBooks;
  final int matchedCount;
  final int mismatchedCount;
  final int missingInBooksCount;
  final int missingIn2bCount;
  final double totalItc2b;
  final double totalItcBooks;
  final double eligibleItc;
  final double variance;

  const ReconciliationSummary({
    this.totalIn2b = 0,
    this.totalInBooks = 0,
    this.matchedCount = 0,
    this.mismatchedCount = 0,
    this.missingInBooksCount = 0,
    this.missingIn2bCount = 0,
    this.totalItc2b = 0.0,
    this.totalItcBooks = 0.0,
    this.eligibleItc = 0.0,
    this.variance = 0.0,
  });
}
