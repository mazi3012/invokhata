import 'package:flutter/material.dart';

import '../../data/gst_report_models.dart';
import 'gst_report_helpers.dart';

/// Mobile-optimized HSN Summary view with card-based layout.
class GstHsnSummaryTableView extends StatelessWidget {
  final GstReportData data;

  const GstHsnSummaryTableView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final rows = data.hsnSummary;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ReportSectionCard(
          title: 'HSN/SAC Summary Report',
          subtitle: 'HSN/SAC wise summary of all supplies',
          itemCount: rows.length,
          child: rows.isEmpty
              ? const EmptyTablePlaceholder(message: 'No HSN/SAC data')
              : Column(
                  children: rows.map((hsn) => DataCard(
                    sectionTitle: hsn.hsnSac,
                    fields: [
                      DataField(label: 'Description', value: hsn.description),
                      DataField(label: 'UQC', value: hsn.unit),
                      DataField(label: 'Quantity', value: hsn.quantity.toStringAsFixed(2)),
                      DataField(label: 'Taxable', value: formatCurrency(hsn.taxableValue)),
                      DataField(label: 'CGST', value: formatCurrency(hsn.cgst)),
                      DataField(label: 'SGST', value: formatCurrency(hsn.sgst)),
                      DataField(label: 'IGST', value: formatCurrency(hsn.igst)),
                      DataField(label: 'Cess', value: formatCurrency(hsn.cess)),
                    ],
                  )).toList(),
                ),
        ),
      ],
    );
  }
}
