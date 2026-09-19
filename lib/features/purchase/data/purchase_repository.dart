import 'package:isar/isar.dart';
import '../../../core/database/isar_service.dart';
import '../../../core/database/schemas/purchase.dart';
import '../../../core/database/schemas/item.dart';
import '../../../core/database/schemas/party.dart';

class PurchaseRepository {
  final Isar _isar = IsarService.isar;

  Future<void> createPurchaseAndProcess({
    required Purchase purchase,
  }) async {
    await _isar.writeTxn(() async {
      // 1. Save the purchase
      await _isar.purchases.put(purchase);

      // 2. Increase inventory stock for each line item
      for (final lineItem in purchase.items) {
        if (lineItem.itemId != null) {
          final dbItem = await _isar.items.get(lineItem.itemId!);
          if (dbItem != null) {
            dbItem.stockQuantity += lineItem.quantity;
            await _isar.items.put(dbItem);
          }
        }
      }

      // 3. If linked to a party, reduce their outstanding balance by totalAmount
      if (purchase.partyId != null && purchase.totalAmount > 0) {
        final party = await _isar.partys.get(purchase.partyId!);
        if (party != null) {
          party.outstandingBalance -= purchase.totalAmount;
          if (party.outstandingBalance < 0) party.outstandingBalance = 0;
          await _isar.partys.put(party);
        }
      }
    });
  }

  Future<List<Purchase>> getAllPurchases() async {
    return await _isar.purchases.where().sortByPurchaseDateDesc().findAll();
  }

  Future<Purchase?> getPurchaseById(int id) async {
    return await _isar.purchases.get(id);
  }

  Future<void> deletePurchase(int id) async {
    final purchase = await _isar.purchases.get(id);
    if (purchase == null) return;

    await _isar.writeTxn(() async {
      // Reverse stock changes
      for (final lineItem in purchase.items) {
        if (lineItem.itemId != null) {
          final dbItem = await _isar.items.get(lineItem.itemId!);
          if (dbItem != null) {
            dbItem.stockQuantity -= lineItem.quantity;
            if (dbItem.stockQuantity < 0) dbItem.stockQuantity = 0;
            await _isar.items.put(dbItem);
          }
        }
      }

      // Reverse party outstanding change
      if (purchase.partyId != null && purchase.totalAmount > 0) {
        final party = await _isar.partys.get(purchase.partyId!);
        if (party != null) {
          party.outstandingBalance += purchase.totalAmount;
          await _isar.partys.put(party);
        }
      }

      await _isar.purchases.delete(id);
    });
  }
}
