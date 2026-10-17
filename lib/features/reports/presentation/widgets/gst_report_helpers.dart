import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

/// Formats a double as Indian Rupee string, safely handling NaN/Infinity.
String formatCurrency(double value) {
  if (!value.isFinite) return '₹0.00';
  return '₹${value.toStringAsFixed(2)}';
}

/// Formats a DateTime to dd-MM-yyyy display string.
String dateLabel(DateTime date) => '${date.day.toString().padLeft(2, '0')}-'
    '${date.month.toString().padLeft(2, '0')}-${date.year}';

/// A styled section header for report tables.
class ReportTableHeader extends StatelessWidget {
  final String title;
  final String? subtitle;
  final int itemCount;

  const ReportTableHeader({
    super.key,
    required this.title,
    this.subtitle,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                  ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              '$itemCount records',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

/// A card wrapper for each report table section.
class ReportSectionCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final int itemCount;
  final Widget child;

  const ReportSectionCard({
    super.key,
    required this.title,
    this.subtitle,
    required this.itemCount,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.border),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReportTableHeader(
              title: title,
              subtitle: subtitle,
              itemCount: itemCount,
            ),
            const Divider(height: 1, color: AppColors.border),
            const SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }
}

/// Empty state placeholder when a table has no data.
class EmptyTablePlaceholder extends StatelessWidget {
  final String message;

  const EmptyTablePlaceholder({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            Icon(Icons.inbox_outlined,
                size: 48, color: AppColors.textSecondary.withValues(alpha: 0.5)),
            const SizedBox(height: 12),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Mobile card view for a single data row with label-value pairs
class DataCard extends StatelessWidget {
  final List<DataField> fields;
  final String? sectionTitle;

  const DataCard({
    super.key,
    required this.fields,
    this.sectionTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: AppColors.border),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (sectionTitle != null) ...[
              Text(
                sectionTitle!,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
            ],
            ...fields.map(
              (field) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        field.label,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(
                              color: AppColors.textSecondary,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        field.value,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Data field for the card view
class DataField {
  final String label;
  final String value;

  const DataField({required this.label, required this.value});
}
