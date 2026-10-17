import 'package:flutter/material.dart';
import '../../data/gstr2b_models.dart';

class ReconciliationFilters extends StatelessWidget {
  final MatchStatus currentStatus;
  final ValueChanged<MatchStatus> onStatusChanged;

  const ReconciliationFilters({
    super.key,
    required this.currentStatus,
    required this.onStatusChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.grey[100],
      child: Row(
        children: [
          const Text('Filter:', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 16),
          _buildFilterChip(
            label: 'Matched',
            status: MatchStatus.matched,
            currentStatus: currentStatus,
            onSelected: onStatusChanged,
          ),
          const SizedBox(width: 8),
          _buildFilterChip(
            label: 'Mismatched',
            status: MatchStatus.mismatched,
            currentStatus: currentStatus,
            onSelected: onStatusChanged,
          ),
          const SizedBox(width: 8),
          _buildFilterChip(
            label: 'Missing in Books',
            status: MatchStatus.missingInBooks,
            currentStatus: currentStatus,
            onSelected: onStatusChanged,
          ),
          const SizedBox(width: 8),
          _buildFilterChip(
            label: 'Missing in 2B',
            status: MatchStatus.missingIn2b,
            currentStatus: currentStatus,
            onSelected: onStatusChanged,
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip({
    required String label,
    required MatchStatus status,
    required MatchStatus currentStatus,
    required ValueChanged<MatchStatus> onSelected,
  }) {
    final isSelected = status == currentStatus;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => onSelected(status),
      backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
      ),
      showCheckmark: false,
    );
  }
}