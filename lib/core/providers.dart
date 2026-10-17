import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'database/isar_service.dart';
import '../features/reconciliation/data/gstr2b_import_service.dart';
import '../features/reconciliation/data/reconciliation_repository.dart';

final isarProvider = Provider<Isar>((ref) => IsarService.isar);

final gstr2bImportServiceProvider = Provider<Gstr2bImportService>((ref) => Gstr2bImportService());

final reconciliationRepositoryProvider = Provider<ReconciliationRepository>(
  (ref) => ReconciliationRepository(ref.watch(isarProvider)),
);

