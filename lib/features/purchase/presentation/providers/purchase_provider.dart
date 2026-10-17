import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/schemas/purchase.dart';
import '../../data/purchase_repository.dart';

final purchaseRepositoryProvider = Provider((ref) => PurchaseRepository());

final purchaseProvider =
    StateNotifierProvider<PurchaseNotifier, AsyncValue<List<Purchase>>>(
        (ref) {
  return PurchaseNotifier(ref.watch(purchaseRepositoryProvider));
});

class PurchaseNotifier extends StateNotifier<AsyncValue<List<Purchase>>> {
  final PurchaseRepository _repository;

  PurchaseNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadPurchases();
  }

  Future<void> loadPurchases() async {
    try {
      state = const AsyncValue.loading();
      final purchases = await _repository.getAllPurchases();
      state = AsyncValue.data(purchases);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> addPurchase(Purchase purchase) async {
    try {
      await _repository.createPurchaseAndProcess(purchase: purchase);
      await loadPurchases();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> deletePurchase(int id) async {
    try {
      await _repository.deletePurchase(id);
      await loadPurchases();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  /// Generates the next bill number: PUR-YYYY-NNNN
  Future<String> nextBillNumber() async {
    final year = DateTime.now().year;
    final prefix = 'PUR-$year-';
    
    final purchases = await _repository.getAllPurchases();
    final latest = purchases.where((p) => p.billNumber.startsWith(prefix)).firstOrNull;
        
    final seq = (latest?.billSeq ?? 0) + 1;
    return '$prefix${seq.toString().padLeft(4, '0')}';
  }
}
