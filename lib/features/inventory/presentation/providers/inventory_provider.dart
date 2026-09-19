import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/schemas/item.dart';
import '../../data/item_repository.dart';

final inventoryRepositoryProvider = Provider((ref) => ItemRepository());

final inventoryProvider =
    StateNotifierProvider<InventoryNotifier, AsyncValue<List<Item>>>((ref) {
  return InventoryNotifier(ref.watch(inventoryRepositoryProvider));
});

class InventoryNotifier extends StateNotifier<AsyncValue<List<Item>>> {
  final ItemRepository _repository;

  InventoryNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadItems();
  }

  Future<void> loadItems() async {
    try {
      state = const AsyncValue.loading();
      final items = await _repository.getAllItems();
      state = AsyncValue.data(items);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  /// Returns true when the item was persisted; false when the write failed
  /// (e.g. a unique-index collision). Failure is also reflected in `state`.
  Future<bool> addItem(Item item) async {
    try {
      await _repository.saveItem(item);
      await loadItems();
      return true;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return false;
    }
  }

  /// Returns true when the item was persisted; false when the write failed
  /// (e.g. a unique-index collision). Failure is also reflected in `state`.
  Future<bool> updateItem(Item item) async {
    try {
      await _repository.saveItem(item);
      await loadItems();
      return true;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return false;
    }
  }
}
