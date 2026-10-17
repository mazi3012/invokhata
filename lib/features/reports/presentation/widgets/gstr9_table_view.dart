import 'package:flutter/material.dart';

import '../../data/gst_report_models.dart';
import 'gst_report_helpers.dart';

/// Mobile-optimized GSTR-9 view with card-based layout.
class Gstr9TableView extends StatelessWidget {
  final GstReportData data;

  const Gstr9TableView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _annualSummarySection(context),
        _annualReturnsSection(context),
      ],
    );
  }

  Widget _annualSummarySection(BuildContext context) {
    final totalTurnover = data.salesSummary.taxableValue + data.purchaseSummary.taxableValue;
    final totalTaxPaid = data.salesSummary.totalTax + data.purchaseSummary.totalTax;
    final totalItc = data.purchaseSummary.totalTax;
    final netTaxPayable = data.salesSummary.totalTax - data.purchaseSummary.totalTax;
    
    return ReportSectionCard(
      title: 'Annual Return Summary',
      subtitle: 'Summary of annual turnover and taxes',
      itemCount: 4,
      child: Column(
        children: [
          DataCard(
            sectionTitle: 'Total Turnover',
            fields: [DataField(label: 'Amount', value: formatCurrency(totalTurnover))],
          ),
          const SizedBox(height: 8),
          DataCard(
            sectionTitle: 'Total Tax Paid',
            fields: [DataField(label: 'Amount', value: formatCurrency(totalTaxPaid))],
          ),
          const SizedBox(height: 8),
          DataCard(
            sectionTitle: 'Total ITC Availed',
            fields: [DataField(label: 'Amount', value: formatCurrency(totalItc))],
          ),
          const SizedBox(height: 8),
          DataCard(
            sectionTitle: 'Net Tax Payable',
            fields: [DataField(label: 'Amount', value: formatCurrency(netTaxPayable))],
          ),
        ],
      ),
    );
  }

  Widget _annualReturnsSection(BuildContext context) {
    return const ReportSectionCard(
      title: 'Annual Returns Detail',
      subtitle: 'Detailed breakdown of annual returns',
      itemCount: 1,
      child: DataCard(
        fields: [
          DataField(label: 'Return Type', value: 'GSTR-9'),
          DataField(label: 'Status', value: 'Pending'),
          DataField(label: 'Due Date', value: '31 Dec'),
          DataField(label: 'Tax Payable', value: '₹0.00'),
          DataField(label: 'Late Fee', value: '₹0.00'),
        ],
      ),
    );
  }
}
