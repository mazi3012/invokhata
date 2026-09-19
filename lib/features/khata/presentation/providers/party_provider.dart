import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import '../../../../core/database/isar_service.dart';
import '../../../../core/database/schemas/party.dart';

final partyProvider =
    StateNotifierProvider<PartyNotifier, AsyncValue<List<Party>>>((ref) {
  return PartyNotifier();
});

class PartyNotifier extends StateNotifier<AsyncValue<List<Party>>> {
  PartyNotifier() : super(const AsyncValue.loading()) {
    loadParties();
  }

  final Isar _isar = IsarService.isar;

  Future<void> loadParties() async {
    try {
      state = const AsyncValue.loading();
      final parties = await _isar.partys.where().findAll();
      state = AsyncValue.data(parties);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  // Flexible signature to accept either a Party object or individual arguments
  Future<void> addParty(dynamic partyOrName, [String? phoneNumber]) async {
    Party party;
    if (partyOrName is Party) {
      party = partyOrName;
    } else {
      party = Party()
        ..name = partyOrName
        ..phoneNumber = phoneNumber
        ..outstandingBalance = 0.0;
    }

    await _isar.writeTxn(() async {
      await _isar.partys.put(party);
    });
    loadParties();
  }

  Future<void> updateParty(Party party) async {
    await _isar.writeTxn(() async {
      await _isar.partys.put(party);
    });
    loadParties();
  }

  Future<void> recordDues(int partyId, double amount) async {
    await _isar.writeTxn(() async {
      final party = await _isar.partys.get(partyId);
      if (party != null) {
        party.outstandingBalance += amount;
        await _isar.partys.put(party);
      }
    });
    loadParties();
  }

  Future<void> addPayment(int partyId, double amount) async {
    await _isar.writeTxn(() async {
      final party = await _isar.partys.get(partyId);
      if (party != null) {
        party.outstandingBalance -= amount;
        if (party.outstandingBalance < 0) party.outstandingBalance = 0;
        await _isar.partys.put(party);
      }
    });
    loadParties();
  }
}
