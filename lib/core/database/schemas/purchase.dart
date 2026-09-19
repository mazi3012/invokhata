import 'package:isar/isar.dart';

part 'purchase.g.dart';

@embedded
class PurchaseLineItem {
  int? itemId;
  String? itemName;
  String? unit;
  String? hsnCode;
  double quantity = 1.0;
  double rate = 0.0;

  // --- Tax ---
  // 'Without Tax' | 'CGST+SGST@X%' | 'IGST@X%'
  String taxType = 'Without Tax';
  double gstRate = 0.0;
  double taxAmount = 0.0;
  double cgstRate = 0.0;
  double sgstRate = 0.0;
  double igstRate = 0.0;
  double cgstAmount = 0.0;
  double sgstAmount = 0.0;
  double igstAmount = 0.0;

  // --- Discount ---
  // 'none' | 'percentage' | 'flat'
  String discountType = 'none';
  double discountValue = 0.0;
  double discountAmount = 0.0;

  double totalAmount = 0.0;
}

@collection
class Purchase {
  Id id = Isar.autoIncrement;

  // `replace: true` is intentionally NOT used: a duplicate bill number must
  // never silently overwrite an existing purchase (data loss). A plain unique
  // index makes Isar throw on duplicate keys instead.
  @Index(unique: true)
  late String billNumber; // e.g., PUR-2026-0001
  
  @Index()
  int billSeq = 0;

  int? partyId;
  String partyName = '';
  String? partyPhone;

  DateTime purchaseDate = DateTime.now();

  List<PurchaseLineItem> items = [];

  double subtotal = 0.0;
  double totalDiscount = 0.0;
  double totalCgst = 0.0;
  double totalSgst = 0.0;
  double totalIgst = 0.0;
  double totalGst = 0.0;
  double totalAmount = 0.0;

  // 'paid', 'partially_paid', 'unpaid'
  String paymentStatus = 'paid';

  DateTime createdAt = DateTime.now();
}
