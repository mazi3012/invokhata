import 'package:isar/isar.dart';
import '../../../core/database/isar_service.dart';
import '../../../core/database/schemas/invoice.dart';
import '../../../core/database/schemas/item.dart';
import '../../../core/database/schemas/party.dart';
import '../../../core/services/settings_service.dart';

/// Thrown when a sale line-item exceeds the item's available stock.
class InsufficientStockException implements Exception {
  InsufficientStockException(this.itemName, this.available, this.requested);

  final String itemName;
  final double available;
  final double requested;

  @override
  String toString() =>
      'Insufficient stock for "$itemName": only $available available, '
      '$requested requested.';
}

class POSRepository {
  final Isar _isar = IsarService.isar;

  /// Generates the next invoice number based on settings or default INV-YYYY-NNNN
  Future<String> nextInvoiceNumber([AppSettings? settings]) async {
    final s = settings ?? AppSettings();
    final year = DateTime.now().year;
    final prefix = s.invoicePrefix.isNotEmpty ? s.invoicePrefix : 'INV';
    final searchPrefix = '$prefix-$year-';

    final latest = await _isar.invoices
        .filter()
        .invoiceNumberStartsWith(searchPrefix)
        .sortByInvoiceSeqDesc()
        .findFirst();

    final seq = (latest?.invoiceSeq ?? 0) + 1;
    final paddedSeq =
        seq.toString().padLeft(s.invoicePadLength > 0 ? s.invoicePadLength : 4, '0');

    final components = <String>[];
    if (s.invoicePrefix.isNotEmpty) {
      components.add(s.invoicePrefix);
    }
    if (s.invoiceIncludeYear) {
      components.add(year.toString());
    }
    components.add(paddedSeq);
    if (s.invoiceSuffix.isNotEmpty) {
      components.add(s.invoiceSuffix);
    }

    return components.join(s.invoiceSeparator);
  }

  Future<void> createInvoiceAndProcessSale({
    required Invoice invoice,
    int? partyId,
  }) async {
    await _isar.writeTxn(() async {
      // 0. Verify sufficient stock for every line item BEFORE writing anything.
      // The check lives inside the write transaction, so two concurrent
      // checkouts cannot oversell the same stock between read and write.
      for (final lineItem in invoice.items) {
        if (lineItem.itemId == null || lineItem.quantity <= 0) continue;
        final dbItem = await _isar.items.get(lineItem.itemId!);
        if (dbItem == null) continue;
        if (dbItem.stockQuantity < lineItem.quantity) {
          throw InsufficientStockException(
            lineItem.itemName ?? 'Item',
            dbItem.stockQuantity,
            lineItem.quantity,
          );
        }
      }

      // 1. Save the invoice
      await _isar.invoices.put(invoice);

      // 2. Deduct inventory stock for each line item
      for (final lineItem in invoice.items) {
        if (lineItem.itemId != null) {
          final dbItem = await _isar.items.get(lineItem.itemId!);
          if (dbItem != null) {
            dbItem.stockQuantity -= lineItem.quantity;
            await _isar.items.put(dbItem);
          }
        }
      }

      // 3. Update customer outstanding dues if unpaid/partially paid
      if (partyId != null && invoice.dueAmount > 0) {
        final party = await _isar.partys.get(partyId);
        if (party != null) {
          party.outstandingBalance += invoice.dueAmount;
          await _isar.partys.put(party);
        }
      }
    });
  }

  Future<List<Invoice>> getAllInvoices() async {
    return await _isar.invoices.where().sortByInvoiceDateDesc().findAll();
  }

  Future<void> deleteInvoice(int id) async {
    final invoice = await _isar.invoices.get(id);
    if (invoice == null) return;

    await _isar.writeTxn(() async {
      // Reverse inventory stock changes (add back the items)
      for (final lineItem in invoice.items) {
        if (lineItem.itemId != null) {
          final dbItem = await _isar.items.get(lineItem.itemId!);
          if (dbItem != null) {
            dbItem.stockQuantity += lineItem.quantity;
            await _isar.items.put(dbItem);
          }
        }
      }

      // Reverse customer outstanding dues if unpaid/partially paid
      if (invoice.partyId != null && invoice.dueAmount > 0) {
        final party = await _isar.partys.get(invoice.partyId!);
        if (party != null) {
          party.outstandingBalance -= invoice.dueAmount;
          if (party.outstandingBalance < 0) party.outstandingBalance = 0;
          await _isar.partys.put(party);
        }
      }

      // Delete the invoice
      await _isar.invoices.delete(id);
    });
  }
}
