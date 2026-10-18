import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'schemas/item.dart';
import 'schemas/party.dart';
import 'schemas/invoice.dart';
import 'schemas/purchase.dart';
import 'schemas/einvoice.dart';
import 'schemas/eway_bill.dart';
import 'schemas/credit_note.dart';
import 'schemas/tds_entry.dart';
import 'schemas/tcs_entry.dart';

class IsarService {
  static late Isar isar;

  /// Optional test hook. When set, `init()` calls this instead of opening Isar.
  static Future<void> Function()? testOverride;

  static Future<void> init() async {
    if (testOverride != null) {
      await testOverride!();
      return;
    }
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      isar = await Isar.open(
        [
          ItemSchema,
          PartySchema,
          InvoiceSchema,
          PurchaseSchema,
          EInvoiceSchema,
          EWayBillSchema,
          CreditNoteSchema,
          TdsEntrySchema,
          TcsEntrySchema,
        ],
        directory: dir.path,
        inspector: kDebugMode, // Isar Inspector only in debug builds for safety
      );
    } else {
      isar = Isar.getInstance()!;
    }
  }

  static Future<void> clearAll() async {
    await isar.writeTxn(() async {
      await isar.items.clear();
      await isar.partys.clear();
      await isar.invoices.clear();
      await isar.purchases.clear();
      await isar.eInvoices.clear();
      await isar.eWayBills.clear();
      await isar.creditNotes.clear();
      await isar.tdsEntrys.clear();
      await isar.tcsEntrys.clear();
    });
  }
}
