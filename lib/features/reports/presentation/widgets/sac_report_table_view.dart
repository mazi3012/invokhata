import 'package:flutter/material.dart';

import '../../data/gst_report_models.dart';
import 'gst_report_helpers.dart';

/// Mobile-optimized SAC Summary view with card-based layout.
class SacReportTableView extends StatelessWidget {
  final GstReportData data;

  const SacReportTableView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final rows = data.sacSummary;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ReportSectionCard(
          title: 'SAC Report',
          subtitle: 'Service Accounting Code wise summary',
          itemCount: rows.length,
          child: rows.isEmpty
              ? const EmptyTablePlaceholder(message: 'No SAC data')
              : Column(
                  children: rows.map((sac) => DataCard(
                    sectionTitle: sac.hsnSac,
                    fields: [
                      DataField(label: 'Description', value: sac.description),
                      DataField(label: 'UQC', value: sac.unit),
                      DataField(label: 'Quantity', value: sac.quantity.toStringAsFixed(2)),
                      DataField(label: 'Taxable', value: formatCurrency(sac.taxableValue)),
                      DataField(label: 'CGST', value: formatCurrency(sac.cgst)),
                      DataField(label: 'SGST', value: formatCurrency(sac.sgst)),
                      DataField(label: 'IGST', value: formatCurrency(sac.igst)),
                      DataField(label: 'Cess', value: formatCurrency(sac.cess)),
                    ],
                  )).toList(),
                ),
        ),
      ],
    );
  }
}
