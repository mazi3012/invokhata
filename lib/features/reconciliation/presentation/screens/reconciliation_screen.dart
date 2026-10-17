import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:file_picker/file_picker.dart';

import '../../../../core/widgets/responsive_scaffold.dart';
import '../../../../core/providers.dart';
import '../../data/gstr2b_models.dart';
import '../widgets/reconciliation_summary_card.dart';
import '../widgets/reconciliation_table.dart';
import '../widgets/reconciliation_filters.dart';

class ReconciliationScreen extends ConsumerStatefulWidget {
  const ReconciliationScreen({super.key});

  @override
  ConsumerState<ReconciliationScreen> createState() => _ReconciliationScreenState();
}

class _ReconciliationScreenState extends ConsumerState<ReconciliationScreen> {
  List<ReconciliationResult> _results = [];
  ReconciliationSummary _summary = const ReconciliationSummary();
  MatchStatus _filterStatus = MatchStatus.matched;
  bool _isLoading = false;
  String? _errorMessage;

  Future<void> _importAndReconcile() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      // 1. Pick GSTR-2B JSON file
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['json'],
        dialogTitle: 'Select GSTR-2B JSON File',
      );

      if (result != null && result.files.isNotEmpty) {
        final file = result.files.first;
        final jsonData = String.fromCharCodes(file.bytes!);

        // 2. Parse GSTR-2B data
        final gstr2bList = ref.read(gstr2bImportServiceProvider).parseGstr2bJson(jsonData);

        // 3. Reconcile with purchase register
        final repository = ref.read(reconciliationRepositoryProvider);
        final results = await repository.reconcileGstr2bInvoices(gstr2bList);
        final summary = repository.calculateSummary(results);

        setState(() {
          _results = results;
          _summary = summary;
          _filterStatus = MatchStatus.matched;
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Failed to process GSTR-2B file: ${e.toString()}';
      });
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _setFilterStatus(MatchStatus status) {
    setState(() => _filterStatus = status);
  }

  @override
  Widget build(BuildContext context) {
    final filteredResults = _results.where((r) => r.status == _filterStatus).toList();

    return ResponsiveScaffold(
      currentIndex: 7,
      title: 'GSTR-2B Reconciliation',
      showBackButton: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.file_download_outlined),
          tooltip: 'Import GSTR-2B',
          onPressed: _importAndReconcile,
        ),
      ],
      body: Column(
        children: [
          // 1. Summary Cards
          ReconciliationSummaryCard(summary: _summary),

          // 2. Filters
          ReconciliationFilters(
            currentStatus: _filterStatus,
            onStatusChanged: _setFilterStatus,
          ),

          // 3. Results Table
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _errorMessage != null
                    ? Center(child: Text(_errorMessage!, style: const TextStyle(color: Colors.red)))
                    : filteredResults.isEmpty
                        ? const Center(child: Text('No reconciliation results'))
                        : ReconciliationTable(results: filteredResults),
          ),
        ],
      ),
    );
  }
}
