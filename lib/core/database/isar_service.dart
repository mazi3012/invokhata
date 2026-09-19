import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'schemas/item.dart';
import 'schemas/party.dart';
import 'schemas/invoice.dart';
import 'schemas/purchase.dart';

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
        [ItemSchema, PartySchema, InvoiceSchema, PurchaseSchema],
        directory: dir.path,
        inspector: kDebugMode, // Isar Inspector only in debug builds for safety
      );
    } else {
      isar = Isar.getInstance()!;
    }
  }
}
