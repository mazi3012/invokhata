import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/gstr2b_models.dart';

class ReconciliationTable extends StatelessWidget {
  final List<ReconciliationResult> results;

  const ReconciliationTable({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Invoice #')),
          DataColumn(label: Text('Date')),
          DataColumn(label: Text('Supplier')),
          DataColumn(label: Text('Taxable Value')),
          DataColumn(label: Text('Tax Amount')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Remarks')),
        ],
        rows: results.map((result) {
          final g2b = result.gstr2b;
          final purchase = result.purchase;
          final date = g2b?.invoiceDate ?? purchase?.invoiceDate;
          final formattedDate = date != null
              ? DateFormat('dd-MM-yyyy').format(date)
              : '';

          return DataRow(
            color: WidgetStateProperty.resolveWith<Color?>((states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.primary.withValues(alpha: 0.1);
              }
              return null;
            }),
            cells: [
              DataCell(Text(g2b?.invoiceNumber ?? purchase?.billNumber ?? '')),
              DataCell(Text(formattedDate)),
              DataCell(Text(g2b?.supplierName ?? purchase?.partyName ?? '')),
              DataCell(Text(
                '₹${(g2b?.taxableValue ?? purchase?.subtotal ?? 0.0).toStringAsFixed(2)}',
                style: const TextStyle(color: AppColors.textSecondary),
              )),
              DataCell(Text(
                '₹${(g2b?.totalTax ?? purchase?.taxAmount ?? 0.0).toStringAsFixed(2)}',
                style: const TextStyle(color: AppColors.textSecondary),
              )),
              DataCell(
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: _statusColor(result.status),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    _statusLabel(result.status),
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
              DataCell(Text(result.remarks)),
            ],
          );
        }).toList(),
      ),
    );
  }

  Color _statusColor(MatchStatus status) {
    switch (status) {
      case MatchStatus.matched:
        return AppColors.success;
      case MatchStatus.mismatched:
        return AppColors.warning;
      case MatchStatus.missingInBooks:
        return AppColors.danger;
      case MatchStatus.missingIn2b:
        return AppColors.info;
    }
  }

  String _statusLabel(MatchStatus status) {
    switch (status) {
      case MatchStatus.matched:
        return 'Matched';
      case MatchStatus.mismatched:
        return 'Mismatched';
      case MatchStatus.missingInBooks:
        return 'Missing in Books';
      case MatchStatus.missingIn2b:
        return 'Missing in 2B';
    }
  }
}