import 'package:isar/isar.dart';

part 'invoice.g.dart';

@embedded
class InvoiceLineItem {
  int? itemId;
  String? itemName;
  String? hsnCode;
  double quantity = 1.0;
  double unitPrice = 0.0;
  double gstRate = 0.0;
  double gstAmount = 0.0;
  double cgstAmount = 0.0;
  double sgstAmount = 0.0;
  double igstAmount = 0.0;
  double totalPrice = 0.0;
}

@collection
class Invoice {
  Id id = Isar.autoIncrement;

  // `replace: true` is intentionally NOT used: a duplicate invoice number
  // must never silently overwrite an existing invoice (data loss). With a
  // plain unique index, Isar throws on duplicate keys so callers can react.
  @Index(unique: true)
  late String invoiceNumber; // e.g., INV-2026-0001
  
  @Index()
  int invoiceSeq = 0; // 1, 2, 3 ...

  int? partyId;
  String partyName = 'Walk-in Customer';
  String? partyPhone;
  String? partyGstin;
  String? partyState;

  DateTime invoiceDate = DateTime.now();

  bool isGstInvoice = true;
  String placeOfSupplyState = '';
  String taxMode = 'intra_state';

  List<InvoiceLineItem> items = [];

  double subtotal = 0.0;
  double totalGst = 0.0;
  double totalCgst = 0.0;
  double totalSgst = 0.0;
  double totalIgst = 0.0;
  double discountAmount = 0.0;
  double grandTotal = 0.0;

  double paidAmount = 0.0;
  double dueAmount = 0.0;

  // 'paid', 'partially_paid', 'unpaid'
  String paymentStatus = 'paid';

  // 'cash', 'upi', 'bank_transfer', 'credit'
  String paymentMode = 'cash';
}
