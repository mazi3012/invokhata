import 'package:isar/isar.dart';
import 'package:invokhata/core/database/schemas/tds_entry.dart';

class TdsRepository {
  final Isar _isar;

  TdsRepository(this._isar);

  // Create a TDS entry
  Future<void> createTdsEntry(TdsEntry entry) async {
    await _isar.writeTxn(() async {
      await _isar.collection<TdsEntry>().put(entry);
    });
  }

  // Retrieve all TDS entries
  Future<List<TdsEntry>> getAllTdsEntries() async {
    return await _isar.collection<TdsEntry>().where().findAll();
  }

  // Retrieve a specific TDS entry by ID
  Future<TdsEntry?> getTdsEntryById(int id) async {
    return await _isar.collection<TdsEntry>().get(id);
  }

  // Delete a TDS entry
  Future<void> deleteTdsEntry(int id) async {
    await _isar.writeTxn(() async {
      await _isar.collection<TdsEntry>().delete(id);
    });
  }
}