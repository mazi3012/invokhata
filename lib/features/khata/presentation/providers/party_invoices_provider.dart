import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import '../../../../core/database/isar_service.dart';
import '../../../../core/database/schemas/invoice.dart';

final partyInvoicesProvider =
    FutureProvider.family<List<Invoice>, int>((ref, partyId) async {
  final isar = IsarService.isar;
  // Fetch all invoices for this specific customer
  final invoices =
      await isar.invoices.filter().partyIdEqualTo(partyId).findAll();

  // Sort them by date (newest first)
  invoices.sort((a, b) => b.invoiceDate.compareTo(a.invoiceDate));

  return invoices;
});
