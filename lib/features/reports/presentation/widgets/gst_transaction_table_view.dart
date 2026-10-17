import 'package:flutter/material.dart';

import '../../data/gst_report_models.dart';
import 'gst_report_helpers.dart';

/// Mobile-optimized GST Transaction view with card-based layout.
class GstrTransactionTableView extends StatelessWidget {
  final GstReportData data;

  const GstrTransactionTableView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _outwardSection(context),
        _inwardSection(context),
      ],
    );
  }

  Widget _outwardSection(BuildContext context) {
    return ReportSectionCard(
      title: 'Table 1 – Outward Supplies',
      subtitle: 'All outward taxable and non-taxable supplies',
      itemCount: data.sales.length,
      child: data.sales.isEmpty
          ? const EmptyTablePlaceholder(message: 'No outward supplies')
          : Column(
              children: data.sales.map((doc) => DataCard(
                fields: [
                  DataField(label: 'Document No', value: doc.documentNumber),
                  DataField(label: 'Date', value: dateLabel(doc.documentDate)),
                  DataField(label: 'Party GSTIN', value: doc.partyGstin ?? '-'),
                  DataField(label: 'Party Name', value: doc.partyName),
                  DataField(label: 'Taxable', value: formatCurrency(doc.documentTaxableValue)),
                  DataField(label: 'Tax', value: formatCurrency(doc.totalTax)),
                  DataField(label: 'Total', value: formatCurrency(doc.documentTotal)),
                ],
              )).toList(),
            ),
    );
  }

  Widget _inwardSection(BuildContext context) {
    final rows = data.purchases;
    return ReportSectionCard(
      title: 'Table 2 – Inward Supplies',
      subtitle: 'All inward taxable and non-taxable supplies',
      itemCount: rows.length,
      child: rows.isEmpty
          ? const EmptyTablePlaceholder(message: 'No inward supplies')
          : Column(
              children: rows.map((doc) => DataCard(
                fields: [
                  DataField(label: 'Document No', value: doc.documentNumber),
                  DataField(label: 'Date', value: dateLabel(doc.documentDate)),
                  DataField(label: 'Party GSTIN', value: doc.partyGstin ?? '-'),
                  DataField(label: 'Party Name', value: doc.partyName),
                  DataField(label: 'Taxable', value: formatCurrency(doc.documentTaxableValue)),
                  DataField(label: 'Tax', value: formatCurrency(doc.totalTax)),
                  DataField(label: 'Total', value: formatCurrency(doc.documentTotal)),
                ],
              )).toList(),
            ),
    );
  }
}
