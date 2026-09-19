import 'package:isar/isar.dart';
import '../../../core/database/isar_service.dart';
import '../../../core/database/schemas/invoice.dart';
import '../../../core/database/schemas/item.dart';
import '../../../core/database/schemas/party.dart';

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

  /// Generates the next invoice number: INV-YYYY-NNNN
  ///
  /// Mirrors the purchase flow's sequential `PUR-YYYY-NNNN` numbering. It uses
  /// an indexed prefix query + descending sort to fetch only the highest
  /// existing sequence for the current calendar year, avoiding a full-table scan
  /// that would stall checkout at 20k+ invoices.
  Future<String> nextInvoiceNumber() async {
    final year = DateTime.now().year;
    final prefix = 'INV-$year-';

    // Fetch only the single highest invoice sequence for this year.
    final latest = await _isar.invoices
        .filter()
        .invoiceNumberStartsWith(prefix)
        .sortByInvoiceSeqDesc()
        .findFirst();

    final seq = (latest?.invoiceSeq ?? 0) + 1;
    return '$prefix${seq.toString().padLeft(4, '0')}';
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
}
