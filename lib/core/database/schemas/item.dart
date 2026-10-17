import 'package:isar/isar.dart';

part 'item.g.dart';

@collection
class Item {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  late String name;

  // Optional barcode. Uniqueness (when set) is enforced by
  // ItemRepository.saveItem rather than the index: a plain Isar `unique`
  // index treats multiple NULLs (no barcode) as colliding values too, and the
  // former `replace: true` silently deleted the other product on every clash.
  @Index(type: IndexType.hash)
  String? barcode;

  String? hsnCode;
  String? category;
  double purchasePrice = 0.0;
  bool purchasePriceIncludesTax = false;
  double salesPrice = 0.0;
  bool salesPriceIncludesTax = false;
  double wholesalePrice = 0.0;
  double discountAmount = 0.0;
  String discountType = 'percentage'; // 'percentage' or 'amount'
  double stockQuantity = 0.0;
  double atPricePerUnit = 0.0;
  DateTime? asOfDate;
  double minStockThreshold = 5.0;
  String? itemLocation;
  String unit = 'Pcs'; // e.g., Pcs, Kg, Ltr, Mtr, Box, etc.

  bool isGst = true;
  double gstRate = 18.0; // 0, 0.25, 3, 5, 12, 18, 28, 40
  String taxRateName = 'GST@18%';
}
