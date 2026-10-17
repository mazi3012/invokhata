import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/gstr2b_models.dart';

class ReconciliationSummaryCard extends StatelessWidget {
  final ReconciliationSummary summary;

  const ReconciliationSummaryCard({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Reconciliation Summary',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                _buildSummaryItem('Total in GSTR-2B', summary.totalIn2b.toString(), AppColors.info),
                _buildSummaryItem('Total in Books', summary.totalInBooks.toString(), AppColors.warning),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                _buildSummaryItem('Matched', summary.matchedCount.toString(), AppColors.success),
                _buildSummaryItem('Mismatched', summary.mismatchedCount.toString(), AppColors.danger),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                _buildSummaryItem('Missing in Books', summary.missingInBooksCount.toString(), AppColors.danger),
                _buildSummaryItem('Missing in 2B', summary.missingIn2bCount.toString(), AppColors.info),
              ],
            ),
            const Divider(height: 24),
            Row(
              children: [
                _buildSummaryItem('Total ITC (GSTR-2B)', '₹${summary.totalItc2b.toStringAsFixed(2)}', AppColors.info),
                _buildSummaryItem('Total ITC (Books)', '₹${summary.totalItcBooks.toStringAsFixed(2)}', AppColors.warning),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                _buildSummaryItem('Eligible ITC', '₹${summary.eligibleItc.toStringAsFixed(2)}', AppColors.success),
                _buildSummaryItem('Variance', '₹${summary.variance.toStringAsFixed(2)}', summary.variance >= 0 ? AppColors.danger : AppColors.warning),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryItem(String label, String value, Color color) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
          const SizedBox(height: 4),
          Text(value, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }
}