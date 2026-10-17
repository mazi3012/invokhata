import 'package:isar/isar.dart';
import '../../../core/database/isar_service.dart';
import '../../../core/database/schemas/party.dart';

class PartyRepository {
  final Isar _isar = IsarService.isar;

  Future<List<Party>> getAllParties() async {
    return await _isar.partys.where().findAll();
  }

  Future<void> saveParty(Party party) async {
    await _isar.writeTxn(() async {
      await _isar.partys.put(party);
    });
  }

  Future<void> deleteParty(int id) async {
    await _isar.writeTxn(() async {
      await _isar.partys.delete(id);
    });
  }

  Future<void> updateOutstandingBalance(
      int partyId, double amountChange) async {
    await _isar.writeTxn(() async {
      final party = await _isar.partys.get(partyId);
      if (party != null) {
        party.outstandingBalance += amountChange;
        await _isar.partys.put(party);
      }
    });
  }
}
