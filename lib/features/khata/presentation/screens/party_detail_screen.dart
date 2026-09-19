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

  void _showEditPartyDialog(BuildContext context, WidgetRef ref) {
    final nameCtrl = TextEditingController(text: party.name);
    final phoneCtrl = TextEditingController(text: party.phoneNumber ?? '');
    final gstinCtrl = TextEditingController(text: party.gstin ?? '');
    final addrCtrl = TextEditingController(text: party.address ?? '');
    final balCtrl = TextEditingController(
        text: party.outstandingBalance.toStringAsFixed(2));
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
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white),
            onPressed: () {
              if (nameCtrl.text.trim().isEmpty) {
                ScaffoldMessenger.of(ctx).showSnackBar(
                  const SnackBar(
                    content: Text('Please enter a name'),
                    backgroundColor: AppColors.danger,
                  ),
                );
                return;
              }
              final balance = double.tryParse(balCtrl.text.trim());
              if (balance == null || !balance.isFinite) {
                ScaffoldMessenger.of(ctx).showSnackBar(
                  const SnackBar(
                    content: Text('Enter a valid balance amount'),
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

  void _showRecordDuesDialog(BuildContext context, WidgetRef ref) {
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
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white),
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

  void _showAddPaymentDialog(BuildContext context, WidgetRef ref) {
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
              decoration:
                  const InputDecoration(labelText: 'Amount Received (₹)'),
              keyboardType: TextInputType.number),
        ]),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white),
            onPressed: () {
              final amount = double.tryParse(amountCtrl.text.trim());
              if (amount == null || !amount.isFinite || amount <= 0) {
                ScaffoldMessenger.of(ctx).showSnackBar(
                  const SnackBar(
                    content: Text('Enter a valid amount greater than 0'),
                    backgroundColor: AppColors.danger,
                  ),
                );
                return;
              }
              ref.read(partyProvider.notifier).addPayment(party.id, amount);
              Navigator.pop(ctx);
            },
            child: const Text('Record Payment'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final partyState = ref.watch(partyProvider);
    final activeParty = partyState.maybeWhen(
      data: (parties) => parties.isEmpty
          ? party
          : parties.firstWhere((p) => p.id == party.id, orElse: () => party),
      orElse: () => party,
    );
    final invoicesAsync = ref.watch(partyInvoicesProvider(activeParty.id));

    return Scaffold(
      appBar: AppHeader(
        title: '${activeParty.name}\'s Ledger',
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: AppColors.primaryContainer,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(activeParty.name,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    if (activeParty.phoneNumber != null)
                      Text(activeParty.phoneNumber!,
                          style:
                              const TextStyle(color: AppColors.textSecondary)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('Total Due',
                        style: TextStyle(color: AppColors.textSecondary)),
                    Text(
                      '₹${activeParty.outstandingBalance.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: activeParty.outstandingBalance > 0
                            ? AppColors.danger
                            : AppColors.success,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: invoicesAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, _) => Center(child: Text('Error: $err')),
              data: (invoices) {
                if (invoices.isEmpty) {
                  return const Center(
                      child: Padding(
                    padding: EdgeInsets.all(32),
                    child: Text(
                      'No purchase history found for this customer.',
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
                        // Open the PDF Preview Screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  PdfPreviewScreen(invoice: invoice)),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showEditPartyDialog(context, ref),
        icon: const Icon(Icons.edit),
        label: const Text('Edit'),
      ),
      persistentFooterButtons: [
        ElevatedButton.icon(
          onPressed: () => _showRecordDuesDialog(context, ref),
          icon: const Icon(Icons.add_circle_outline),
          label: const Text('Record Dues'),
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.warning,
              foregroundColor: Colors.white),
        ),
        ElevatedButton.icon(
          onPressed: () => _showAddPaymentDialog(context, ref),
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
