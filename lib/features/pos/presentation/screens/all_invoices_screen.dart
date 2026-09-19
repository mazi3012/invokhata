import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/database/schemas/invoice.dart';
import '../../../../core/utils/pdf_preview_screen.dart';
import '../../../../core/widgets/responsive_scaffold.dart';
import '../../data/pos_repository.dart';

class AllInvoicesScreen extends StatefulWidget {
  const AllInvoicesScreen({super.key});

  @override
  State<AllInvoicesScreen> createState() => _AllInvoicesScreenState();
}

class _AllInvoicesScreenState extends State<AllInvoicesScreen> {
  late Future<List<Invoice>> _invoicesFuture;

  @override
  void initState() {
    super.initState();
    _loadInvoices();
  }

  void _loadInvoices() {
    _invoicesFuture = POSRepository().getAllInvoices();
  }

  Future<void> _refresh() async {
    setState(_loadInvoices);
    await _invoicesFuture;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      currentIndex: 2,
      title: 'All Invoices',
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: FutureBuilder<List<Invoice>>(
          future: _invoicesFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Center(
                        child:
                            Text('Could not load invoices: ${snapshot.error}')),
                  ),
                ],
              );
            }

            final invoices = snapshot.data ?? [];
            if (invoices.isEmpty) {
              return ListView(
                children: const [
                  SizedBox(height: 180),
                  Icon(Icons.receipt_long_outlined,
                      size: 64, color: AppColors.textHint),
                  SizedBox(height: 12),
                  Center(
                    child: Text('No invoices yet',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColors.textSecondary)),
                  ),
                  SizedBox(height: 6),
                  Center(
                    child: Text('Completed POS bills will appear here.',
                        style: TextStyle(color: AppColors.textHint)),
                  ),
                ],
              );
            }

            return Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 800),
                child: ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: invoices.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 10),
                  itemBuilder: (context, index) =>
                      _InvoiceTile(invoice: invoices[index]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _InvoiceTile extends StatelessWidget {
  final Invoice invoice;

  const _InvoiceTile({required this.invoice});

  @override
  Widget build(BuildContext context) {
    final statusColor = switch (invoice.paymentStatus) {
      'paid' => AppColors.success,
      'partially_paid' => AppColors.warning,
      _ => AppColors.danger,
    };

    return Card(
      margin: EdgeInsets.zero,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: const CircleAvatar(
          backgroundColor: AppColors.primaryContainer,
          child: Icon(Icons.receipt_long, color: AppColors.primary),
        ),
        title: Text(invoice.invoiceNumber,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(
          '${invoice.partyName}\n${DateFormat('dd MMM yyyy, hh:mm a').format(invoice.invoiceDate)}',
        ),
        isThreeLine: true,
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(invoice.grandTotal.toStringAsFixed(2),
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(
              invoice.paymentStatus.replaceAll('_', ' ').toUpperCase(),
              style: TextStyle(
                  color: statusColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => PdfPreviewScreen(invoice: invoice)),
          );
        },
      ),
    );
  }
}
