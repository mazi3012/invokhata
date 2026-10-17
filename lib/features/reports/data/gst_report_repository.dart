import 'package:isar/isar.dart';

import '../../../../core/database/isar_service.dart';
import '../../../../core/database/schemas/credit_note.dart';
import '../../../../core/database/schemas/invoice.dart';
import '../../../../core/database/schemas/purchase.dart';
import 'gst_report_models.dart';

class GstReportRepository {
  final Isar _isar;

  GstReportRepository({Isar? isar}) : _isar = isar ?? IsarService.isar;

  Future<GstReportData> load(GstReportFilter filter) async {
    final invoices = await _isar.invoices.where().findAll();
    final purchases = await _isar.purchases.where().findAll();
    final creditNotes = await _isar.creditNotes.where().findAll();
    return GstReportData.fromDocuments(
      startDate: filter.startDate,
      endDate: filter.endDate,
      invoices: invoices,
      purchases: purchases,
      creditNotes: creditNotes,
      searchQuery: filter.searchQuery,
    );
  }
}
