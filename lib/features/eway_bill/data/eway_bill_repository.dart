import 'package:isar/isar.dart';
import 'package:invokhata/core/database/schemas/eway_bill.dart';

class EWayBillRepository {
  final Isar _isar;

  EWayBillRepository(this._isar);

  // Create an E-Way Bill
  Future<void> createEWayBill(EWayBill ewayBill) async {
    await _isar.writeTxn(() async {
      await _isar.eWayBills.put(ewayBill);
    });
  }

  // Retrieve all E-Way Bills
  Future<List<EWayBill>> getAllEWayBills() async {
    return await _isar.eWayBills.where().findAll();
  }

  // Retrieve a specific E-Way Bill by ID
  Future<EWayBill?> getEWayBillById(int id) async {
    return await _isar.eWayBills.get(id);
  }

  // Delete an E-Way Bill
  Future<void> deleteEWayBill(int id) async {
    await _isar.writeTxn(() async {
      await _isar.eWayBills.delete(id);
    });
  }
}