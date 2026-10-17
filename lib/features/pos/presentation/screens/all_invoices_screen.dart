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

  void _confirmDelete(BuildContext context, Invoice invoice) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete Invoice'),
        content: Text('Are you sure you want to delete invoice "${invoice.invoiceNumber}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.danger,
            ),
            onPressed: () async {
              Navigator.pop(ctx);
              await _deleteInvoice(invoice.id);
              if (mounted) {
                ScaffoldMessenger.of(this.context).showSnackBar(
                  SnackBar(
                    content: Text('Invoice ${invoice.invoiceNumber} deleted successfully'),
                    backgroundColor: AppColors.success,
                  ),
                );
              }
            },
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  Future<void> _deleteInvoice(int id) async {
    await POSRepository().deleteInvoice(id);
    if (mounted) {
      setState(() {
        _loadInvoices();
      });
    }
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
                      _InvoiceTile(
                        invoice: invoices[index],
                        onDelete: () => _confirmDelete(context, invoices[index]),
                      ),
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
  final VoidCallback onDelete;

  const _InvoiceTile({
    required this.invoice,
    required this.onDelete,
  });

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
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
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
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.delete_outline, color: AppColors.danger),
              onPressed: onDelete,
              tooltip: 'Delete Invoice',
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
