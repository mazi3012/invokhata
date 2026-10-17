import 'package:flutter/material.dart';

import '../../data/gst_report_models.dart';
import 'gst_report_helpers.dart';

/// Mobile-optimized GSTR-1 view with card-based layout instead of wide tables.
class Gstr1TableView extends StatelessWidget {
  final GstReportData data;

  const Gstr1TableView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _b2bSection(context),
        _b2clSection(context),
        _b2csSection(context),
        _exportSection(context),
        _hsnSection(context),
        _docIssuedSection(context),
      ],
    );
  }

  Widget _b2bSection(BuildContext context) {
    final rows = data.b2bSales;
    return ReportSectionCard(
      title: 'Table 4 – B2B Supplies',
      subtitle: 'Taxable outward supplies to registered persons',
      itemCount: rows.length,
      child: rows.isEmpty
          ? const EmptyTablePlaceholder(message: 'No B2B invoices in this period')
          : Column(
              children: rows.map((doc) => DataCard(
                fields: [
                  DataField(label: 'GSTIN', value: doc.partyGstin ?? '-'),
                  DataField(label: 'Party Name', value: doc.partyName),
                  DataField(label: 'Invoice No', value: doc.documentNumber),
                  DataField(label: 'Date', value: dateLabel(doc.documentDate)),
                  DataField(label: 'Taxable', value: formatCurrency(doc.documentTaxableValue)),
                  DataField(label: 'CGST', value: formatCurrency(doc.documentCgst)),
                  DataField(label: 'SGST', value: formatCurrency(doc.documentSgst)),
                  DataField(label: 'IGST', value: formatCurrency(doc.documentIgst)),
                  DataField(label: 'Cess', value: formatCurrency(doc.documentCess)),
                  DataField(label: 'Total', value: formatCurrency(doc.documentTotal)),
                ],
              )).toList(),
            ),
    );
  }

  Widget _b2clSection(BuildContext context) {
    final rows = data.b2clSales;
    return ReportSectionCard(
      title: 'Table 5 – B2CL Supplies',
      subtitle: 'Inter-state supplies to unregistered persons (>= 1,00,000)',
      itemCount: rows.length,
      child: rows.isEmpty
          ? const EmptyTablePlaceholder(message: 'No B2CL invoices')
          : Column(
              children: rows.map((doc) => DataCard(
                fields: [
                  DataField(label: 'Invoice No', value: doc.documentNumber),
                  DataField(label: 'Date', value: dateLabel(doc.documentDate)),
                  DataField(label: 'Party Name', value: doc.partyName),
                  DataField(label: 'Party GSTIN', value: doc.partyGstin ?? '-'),
                  DataField(label: 'Place of Supply', value: doc.placeOfSupplyState ?? '-'),
                  DataField(label: 'Taxable', value: formatCurrency(doc.documentTaxableValue)),
                  DataField(label: 'CGST', value: formatCurrency(doc.documentCgst)),
                  DataField(label: 'SGST', value: formatCurrency(doc.documentSgst)),
                  DataField(label: 'IGST', value: formatCurrency(doc.documentIgst)),
                  DataField(label: 'Cess', value: formatCurrency(doc.documentCess)),
                  DataField(label: 'Total', value: formatCurrency(doc.documentTotal)),
                ],
              )).toList(),
            ),
    );
  }

  Widget _b2csSection(BuildContext context) {
    final rows = data.b2csSales;
    return ReportSectionCard(
      title: 'Table 6 – B2CS Supplies',
      subtitle: 'Intra-state supplies to unregistered persons',
      itemCount: rows.length,
      child: rows.isEmpty
          ? const EmptyTablePlaceholder(message: 'No B2CS invoices')
          : Column(
              children: rows.map((doc) => DataCard(
                fields: [
                  DataField(label: 'Invoice No', value: doc.documentNumber),
                  DataField(label: 'Date', value: dateLabel(doc.documentDate)),
                  DataField(label: 'Party Name', value: doc.partyName),
                  DataField(label: 'State', value: doc.placeOfSupplyState ?? '-'),
                  DataField(label: 'Taxable', value: formatCurrency(doc.documentTaxableValue)),
                  DataField(label: 'CGST', value: formatCurrency(doc.documentCgst)),
                  DataField(label: 'SGST', value: formatCurrency(doc.documentSgst)),
                  DataField(label: 'IGST', value: formatCurrency(doc.documentIgst)),
                  DataField(label: 'Cess', value: formatCurrency(doc.documentCess)),
                  DataField(label: 'Total', value: formatCurrency(doc.documentTotal)),
                ],
              )).toList(),
            ),
    );
  }

  Widget _exportSection(BuildContext context) {
    final rows = data.exportSales;
    return ReportSectionCard(
      title: 'Export Supplies',
      subtitle: 'Zero-rated export invoices',
      itemCount: rows.length,
      child: rows.isEmpty
          ? const EmptyTablePlaceholder(message: 'No export invoices')
          : Column(
              children: rows.map((doc) => DataCard(
                fields: [
                  DataField(label: 'Invoice No', value: doc.documentNumber),
                  DataField(label: 'Date', value: dateLabel(doc.documentDate)),
                  DataField(label: 'Party Name', value: doc.partyName),
                  DataField(label: 'Invoice Type', value: doc.invoiceType),
                  DataField(label: 'Taxable', value: formatCurrency(doc.documentTaxableValue)),
                  DataField(label: 'IGST', value: formatCurrency(doc.documentIgst)),
                  DataField(label: 'Cess', value: formatCurrency(doc.documentCess)),
                  DataField(label: 'Total', value: formatCurrency(doc.documentTotal)),
                ],
              )).toList(),
            ),
    );
  }

  Widget _hsnSection(BuildContext context) {
    final rows = data.hsnSummary;
    return ReportSectionCard(
      title: 'Table 12 – HSN Summary',
      subtitle: 'HSN/SAC wise summary of outward supplies',
      itemCount: rows.length,
      child: rows.isEmpty
          ? const EmptyTablePlaceholder(message: 'No HSN data')
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
    );
  }

  Widget _docIssuedSection(BuildContext context) {
    final totalDocs = data.sales.length;
    final firstDoc = data.sales.isNotEmpty ? data.sales.last.documentNumber : '-';
    final lastDoc = data.sales.isNotEmpty ? data.sales.first.documentNumber : '-';
    return ReportSectionCard(
      title: 'Table 13 – Documents Issued',
      subtitle: 'Summary of documents issued during the period',
      itemCount: 1,
      child: DataCard(
        sectionTitle: 'Invoice Range',
        fields: [
          DataField(label: 'From', value: firstDoc),
          DataField(label: 'To', value: lastDoc),
          DataField(label: 'Total Issued', value: '$totalDocs'),
          const DataField(label: 'Cancelled', value: '0'),
          DataField(label: 'Net Issued', value: '$totalDocs'),
        ],
      ),
    );
  }
}
