import 'package:isar/isar.dart';
import '../../../core/database/isar_service.dart';
import '../../../core/database/schemas/item.dart';

class ItemRepository {
  final Isar _isar = IsarService.isar;

  Future<List<Item>> getAllItems() async {
    return await _isar.items.where().findAll();
  }

  Future<void> saveItem(Item item) async {
    // Enforce barcode uniqueness here (the schema index is deliberately
    // non-unique so that several items without a barcode can coexist and a
    // clash can never silently erase another product). Pass the item's own id
    // when editing so it may keep its barcode.
    final barcode = item.barcode;
    if (barcode != null &&
        await isBarcodeTaken(barcode, excludeId: item.id > 0 ? item.id : null)) {
      throw ArgumentError.value(barcode, 'barcode',
          'is already used by another product');
    }
    await _isar.writeTxn(() async {
      await _isar.items.put(item);
    });
  }

  Future<void> deleteItem(int id) async {
    await _isar.writeTxn(() async {
      await _isar.items.delete(id);
    });
  }

  Future<Item?> findByBarcode(String barcode) async {
    return await _isar.items.filter().barcodeEqualTo(barcode).findFirst();
  }

  /// Returns true when [barcode] is already owned by *another* item.
  ///
  /// Pass [excludeId] (the id of the item being edited) so an item that already
  /// owns its barcode does not block saving itself. With `replace: true` gone
  /// from the schema, an unguarded duplicate now throws deep inside the write
  /// transaction — callers should check this first and show a user-facing error.
  Future<bool> isBarcodeTaken(String barcode, {int? excludeId}) async {
    final existing =
        await _isar.items.filter().barcodeEqualTo(barcode).findFirst();
    if (existing == null) return false;
    return excludeId != existing.id;
  }
}
