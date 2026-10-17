import 'package:isar/isar.dart';

part 'credit_note.g.dart';

/// Credit/Debit Note for GST returns and adjustments.
/// Used for sales returns, purchase returns, price adjustments, and discounts.
@collection
class CreditNote {
  Id id = Isar.autoIncrement;

  /// Unique credit/debit note number (e.g., CN-2026-0001, DN-2026-0001)
  @Index(unique: true)
  late String noteNumber;

  /// Sequential number for the note
  @Index()
  int noteSeq = 0;

  /// Note type: 'credit_note' or 'debit_note'
  String noteType = 'credit_note';

  /// Reference to original invoice/bill number
  String? originalInvoiceNumber;

  /// Original invoice date for reference
  DateTime? originalInvoiceDate;

  /// Note date
  DateTime noteDate = DateTime.now();

  /// Party details (snapshot design like invoices)
  int? partyId;
  String partyName = '';
  String? partyPhone;
  String? partyGstin;
  String? partyState;

  /// Place of supply for tax calculation
  String placeOfSupplyState = '';

  /// Tax mode: 'intra_state' or 'inter_state'
  String taxMode = 'intra_state';

  /// Reason for credit/debit note
  /// Options: 'sales_return', 'purchase_return', 'deficiency', 
  /// 'discount', 'rate_difference', 'other'
  String reason = 'other';

  /// Additional description/remarks
  String? description;

  /// Pre-GST flag (Y/N) - for transition period
  String preGst = 'N';

  /// Is this a GST note?
  bool isGstNote = true;

  /// Line items for the note
  List<CreditNoteLineItem> items = [];

  /// Financial summary
  double subtotal = 0.0;
  double totalCgst = 0.0;
  double totalSgst = 0.0;
  double totalIgst = 0.0;
  double totalGst = 0.0;
  double totalAmount = 0.0;

  /// Payment status
  double paidAmount = 0.0;
  String paymentStatus = 'unadjusted'; // 'adjusted', 'partially_adjusted', 'unadjusted'

  /// Created timestamp
  DateTime createdAt = DateTime.now();
}

@embedded
class CreditNoteLineItem {
  int? itemId;
  String? itemName;
  String? hsnCode;
  double quantity = 0.0;
  String? unit;
  double unitPrice = 0.0;
  double taxableAmount = 0.0;
  double gstRate = 0.0;
  double cgstAmount = 0.0;
  double sgstAmount = 0.0;
  double igstAmount = 0.0;
  double cessRate = 0.0;
  double cessAmount = 0.0;
  double totalAmount = 0.0;
}