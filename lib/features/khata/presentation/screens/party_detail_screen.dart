import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/database/schemas/party.dart';
import '../../../../core/utils/india_gst.dart';
import '../../../../core/utils/pdf_preview_screen.dart';
import '../../../../core/widgets/app_header.dart';
import '../providers/party_invoices_provider.dart';
import '../providers/party_provider.dart';

class PartyDetailScreen extends ConsumerWidget {
  final Party party;
  const PartyDetailScreen({super.key, required this.party});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppHeader(
        title: party.name,
        showBackButton: true,
      ),
      body: PartyDetailView(party: party),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showEditPartyDialog(context, ref, party),
        icon: const Icon(Icons.edit),
        label: const Text('Edit'),
      ),
      persistentFooterButtons: [
        ElevatedButton.icon(
          onPressed: () => showRecordDuesDialog(context, ref, party),
          icon: const Icon(Icons.add_circle_outline),
          label: const Text('Record Dues'),
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.warning,
              foregroundColor: Colors.white),
        ),
        ElevatedButton.icon(
          onPressed: () => showAddPaymentDialog(context, ref, party),
          icon: const Icon(Icons.payments_outlined),
          label: const Text('Record Payment'),
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.success,
              foregroundColor: Colors.white),
        ),
      ],
    );
  }
}

class PartyDetailView extends ConsumerWidget {
  final Party party;
  const PartyDetailView({super.key, required this.party});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final partyInvoicesAsync = ref.watch(partyInvoicesProvider(party.id));

    return Column(
      children: [
        // Party Overview Card
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.primary,
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.3),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              const Text(
                'Current Outstanding Balance',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              const SizedBox(height: 8),
              Text(
                '₹${party.outstandingBalance.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _infoChip(Icons.phone, party.phoneNumber ?? 'No Phone'),
                  _infoChip(Icons.location_on, party.state ?? 'No State'),
                ],
              ),
              if (party.gstin != null) ...[
                const SizedBox(height: 12),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'GSTIN: ${party.gstin}',
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ],
          ),
        ),

        // Recent Invoices / Activity
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 8),
          child: Row(
            children: [
              Icon(Icons.history, size: 20, color: AppColors.primary),
              SizedBox(width: 8),
              Text(
                'Transaction History',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryDark,
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: partyInvoicesAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, _) => Center(child: Text('Error: $err')),
            data: (invoices) {
              if (invoices.isEmpty) {
                return const Center(
                    child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text(
                    'No invoices or transactions recorded for this party yet.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.textSecondary),
                  ),
                ));
              }
              return ListView.builder(
                itemCount: invoices.length,
                itemBuilder: (context, index) {
                  final invoice = invoices[index];
                  final date = DateFormat('dd MMM yyyy, hh:mm a')
                      .format(invoice.invoiceDate);

                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: AppColors.primaryContainer,
                      child: Icon(Icons.receipt, color: AppColors.primary),
                    ),
                    title: Text('Invoice: ${invoice.invoiceNumber}',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('$date\nItems: ${invoice.items.length}'),
                    isThreeLine: true,
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('₹${invoice.grandTotal.toStringAsFixed(2)}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        Text(
                          invoice.paymentStatus
                              .replaceAll('_', ' ')
                              .toUpperCase(),
                          style: TextStyle(
                            fontSize: 10,
                            color: (invoice.paymentStatus == 'paid')
                                ? AppColors.success
                                : AppColors.danger,
                            fontWeight: FontWeight.bold,
                          ),
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
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _infoChip(IconData icon, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Colors.white70),
        const SizedBox(width: 4),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
      ],
    );
  }
}

void showEditPartyDialog(BuildContext context, WidgetRef ref, Party party) {
  final nameCtrl = TextEditingController(text: party.name);
  final phoneCtrl = TextEditingController(text: party.phoneNumber ?? '');
  final gstinCtrl = TextEditingController(text: party.gstin ?? '');
  final addrCtrl = TextEditingController(text: party.address ?? '');
  final balCtrl =
      TextEditingController(text: party.outstandingBalance.toStringAsFixed(2));
  String partyType = party.partyType;
  String? stateVal = party.state ?? stateFromGstin(party.gstin);

  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text('Edit Customer'),
      content: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SegmentedButton<String>(
            segments: const [
              ButtonSegment(value: 'customer', label: Text('Customer')),
              ButtonSegment(value: 'supplier', label: Text('Supplier')),
            ],
            selected: {partyType},
            onSelectionChanged: (s) => partyType = s.first,
          ),
          const SizedBox(height: 12),
          TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(labelText: 'Name *')),
          const SizedBox(height: 10),
          TextField(
              controller: phoneCtrl,
              decoration: const InputDecoration(labelText: 'Phone'),
              keyboardType: TextInputType.phone),
          const SizedBox(height: 10),
          TextField(
              controller: gstinCtrl,
              decoration: const InputDecoration(labelText: 'GSTIN'),
              onChanged: (v) {
                final ds = stateFromGstin(v);
                if (ds != null) stateVal = ds;
              }),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            initialValue: stateVal,
            isExpanded: true,
            decoration: const InputDecoration(labelText: 'State'),
            items: indiaStates
                .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                .toList(),
            onChanged: (s) => stateVal = s,
          ),
          const SizedBox(height: 10),
          TextField(
              controller: addrCtrl,
              decoration: const InputDecoration(labelText: 'Address')),
          const SizedBox(height: 10),
          TextField(
              controller: balCtrl,
              decoration: const InputDecoration(labelText: 'Balance (₹)'),
              keyboardType: TextInputType.number),
        ]),
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary, foregroundColor: Colors.white),
          onPressed: () {
            final balance = double.tryParse(balCtrl.text.trim()) ?? 0;
            if (nameCtrl.text.trim().isEmpty) {
              ScaffoldMessenger.of(ctx).showSnackBar(
                const SnackBar(
                  content: Text('Name is required'),
                  backgroundColor: AppColors.danger,
                ),
              );
              return;
            }
            ref.read(partyProvider.notifier).updateParty(Party()
              ..id = party.id
              ..name = nameCtrl.text.trim()
              ..phoneNumber =
                  phoneCtrl.text.trim().isEmpty ? null : phoneCtrl.text.trim()
              ..gstin =
                  gstinCtrl.text.trim().isEmpty ? null : gstinCtrl.text.trim()
              ..state = stateVal ?? stateFromGstin(gstinCtrl.text)
              ..address =
                  addrCtrl.text.trim().isEmpty ? null : addrCtrl.text.trim()
              ..email = party.email
              ..partyType = partyType
              ..gstType = party.gstType
              ..creditLimit = party.creditLimit
              ..balanceAsOfDate = party.balanceAsOfDate
              ..outstandingBalance = balance
              ..createdAt = party.createdAt);
            Navigator.pop(ctx);
          },
          child: const Text('Update'),
        ),
      ],
    ),
  );
}

void showRecordDuesDialog(BuildContext context, WidgetRef ref, Party party) {
  final amountCtrl = TextEditingController();
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text('Record Dues'),
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        const Text(
            'Enter amount customer owes you (positive) or advance given (negative)'),
        const SizedBox(height: 16),
        TextField(
            controller: amountCtrl,
            decoration: const InputDecoration(labelText: 'Amount (₹)'),
            keyboardType: TextInputType.number),
      ]),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary, foregroundColor: Colors.white),
          onPressed: () {
            final amount = double.tryParse(amountCtrl.text.trim());
            if (amount == null || !amount.isFinite) {
              ScaffoldMessenger.of(ctx).showSnackBar(
                const SnackBar(
                  content: Text('Enter a valid amount'),
                  backgroundColor: AppColors.danger,
                ),
              );
              return;
            }
            if (amount != 0) {
              ref.read(partyProvider.notifier).recordDues(party.id, amount);
            }
            Navigator.pop(ctx);
          },
          child: const Text('Record'),
        ),
      ],
    ),
  );
}

void showAddPaymentDialog(BuildContext context, WidgetRef ref, Party party) {
  final amountCtrl = TextEditingController();
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text('Record Payment Received'),
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        const Text('Enter amount received (reduces outstanding balance)'),
        const SizedBox(height: 16),
        TextField(
            controller: amountCtrl,
            decoration: const InputDecoration(labelText: 'Amount Received (₹)'),
            keyboardType: TextInputType.number),
      ]),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary, foregroundColor: Colors.white),
          onPressed: () {
            final amount = double.tryParse(amountCtrl.text.trim());
            if (amount == null || !amount.isFinite || amount <= 0) {
              ScaffoldMessenger.of(ctx).showSnackBar(
                const SnackBar(
                  content: Text('Enter a valid positive amount'),
                  backgroundColor: AppColors.danger,
                ),
              );
              return;
            }
            ref.read(partyProvider.notifier).addPayment(party.id, amount);
            Navigator.pop(ctx);
          },
          child: const Text('Record'),
        ),
      ],
    ),
  );
}
