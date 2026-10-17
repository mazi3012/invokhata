import 'package:flutter/material.dart';

import '../../data/gst_report_models.dart';
import 'gst_report_helpers.dart';

/// Mobile-optimized GSTR-3B view with card-based layout instead of wide tables.
class Gstr3bTableView extends StatelessWidget {
  final GstReportData data;

  const Gstr3bTableView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _table31Section(context),
        _table32Section(context),
        _table31dSection(context),
        _table4Section(context),
      ],
    );
  }

  double get _rcTaxable => data.purchases
      .where((d) => d.isReverseCharge)
      .fold(0.0, (s, d) => s + d.documentTaxableValue);
  double get _rcIgst => data.purchases
      .where((d) => d.isReverseCharge)
      .fold(0.0, (s, d) => s + d.documentIgst);
  double get _rcCgst => data.purchases
      .where((d) => d.isReverseCharge)
      .fold(0.0, (s, d) => s + d.documentCgst);
  double get _rcSgst => data.purchases
      .where((d) => d.isReverseCharge)
      .fold(0.0, (s, d) => s + d.documentSgst);
  double get _rcCess => data.purchases
      .where((d) => d.isReverseCharge)
      .fold(0.0, (s, d) => s + d.documentCess);

  Widget _table31Section(BuildContext context) {
    return ReportSectionCard(
      title: 'Table 3.1 – Outward Taxable Supplies',
      subtitle: 'Summary of outward taxable supplies',
      itemCount: 2,
      child: Column(
        children: [
          DataCard(
            sectionTitle: '(a) Outward taxable supplies',
            fields: [
              DataField(label: 'Taxable Value', value: formatCurrency(data.salesSummary.taxableValue)),
              DataField(label: 'IGST', value: formatCurrency(data.salesSummary.igst)),
              DataField(label: 'CGST', value: formatCurrency(data.salesSummary.cgst)),
              DataField(label: 'SGST', value: formatCurrency(data.salesSummary.sgst)),
              DataField(label: 'Cess', value: formatCurrency(data.salesSummary.cess)),
            ],
          ),
          const SizedBox(height: 8),
          DataCard(
            sectionTitle: '(d) Inward supplies (reverse charge)',
            fields: [
              DataField(label: 'Taxable Value', value: formatCurrency(_rcTaxable)),
              DataField(label: 'IGST', value: formatCurrency(_rcIgst)),
              DataField(label: 'CGST', value: formatCurrency(_rcCgst)),
              DataField(label: 'SGST', value: formatCurrency(_rcSgst)),
              DataField(label: 'Cess', value: formatCurrency(_rcCess)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _table32Section(BuildContext context) {
    final rows = data.b2clSales;
    return ReportSectionCard(
      title: 'Table 3.2 – Inter-State B2C Supplies',
      subtitle: 'Supplies to unregistered persons',
      itemCount: rows.length,
      child: rows.isEmpty
          ? const EmptyTablePlaceholder(message: 'No inter-state B2C supplies')
          : Column(
              children: rows.map((doc) => DataCard(
                fields: [
                  DataField(label: 'Place of Supply', value: doc.placeOfSupplyState ?? '-'),
                  DataField(label: 'Taxable Value', value: formatCurrency(doc.documentTaxableValue)),
                  DataField(label: 'IGST', value: formatCurrency(doc.documentIgst)),
                ],
              )).toList(),
            ),
    );
  }

  Widget _table31dSection(BuildContext context) {
    final rows = data.purchases.where((d) => d.isReverseCharge).toList();
    return ReportSectionCard(
      title: 'Table 3.1(d) – Inward Reverse Charge',
      subtitle: 'Inward supplies liable to reverse charge',
      itemCount: rows.length,
      child: rows.isEmpty
          ? const EmptyTablePlaceholder(message: 'No reverse charge purchases')
          : Column(
              children: rows.map((doc) => DataCard(
                fields: [
                  DataField(label: 'Supplier GSTIN', value: doc.partyGstin ?? '-'),
                  DataField(label: 'Party Name', value: doc.partyName),
                  DataField(label: 'Bill No', value: doc.documentNumber),
                  DataField(label: 'Date', value: dateLabel(doc.documentDate)),
                  DataField(label: 'Taxable', value: formatCurrency(doc.documentTaxableValue)),
                  DataField(label: 'Tax', value: formatCurrency(doc.totalTax)),
                ],
              )).toList(),
            ),
    );
  }

  Widget _table4Section(BuildContext context) {
    return ReportSectionCard(
      title: 'Table 4 – Eligible ITC',
      subtitle: 'Input Tax Credit',
      itemCount: 1,
      child: DataCard(
        sectionTitle: '(A) ITC Available',
        fields: [
          DataField(label: 'IGST', value: formatCurrency(data.purchaseSummary.igst)),
          DataField(label: 'CGST', value: formatCurrency(data.purchaseSummary.cgst)),
          DataField(label: 'SGST', value: formatCurrency(data.purchaseSummary.sgst)),
          DataField(label: 'Cess', value: formatCurrency(data.purchaseSummary.cess)),
        ],
      ),
    );
  }
}
