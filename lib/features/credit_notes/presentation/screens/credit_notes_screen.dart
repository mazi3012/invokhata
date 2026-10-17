import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/database/schemas/credit_note.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/responsive_scaffold.dart';
import '../../../../core/services/settings_service.dart';
import '../providers/credit_note_provider.dart';
import 'add_credit_note_screen.dart';

class CreditNotesScreen extends ConsumerWidget {
  const CreditNotesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notesState = ref.watch(creditNoteProvider);
    final currency = ref.watch(settingsProvider).currencySymbol;

    return ResponsiveScaffold(
      currentIndex: 6,
      title: 'Credit & Debit Notes',
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: FilledButton.icon(
            onPressed: () => _showNoteTypeDialog(context),
            icon: const Icon(Icons.add, size: 20),
            label: const Text('New Note'),
          ),
        ),
      ],
      body: notesState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error_outline, size: 48, color: AppColors.danger),
              SizedBox(height: 16),
              Text('Error loading notes', style: TextStyle(color: AppColors.danger)),
            ],
          ),
        ),
        data: (notes) {
          if (notes.isEmpty) return _buildEmptyState(context);

          final creditNotes = notes.where((n) => n.noteType == 'credit_note').toList();
          final debitNotes = notes.where((n) => n.noteType == 'debit_note').toList();

          return DefaultTabController(
            length: 3,
            child: Column(
              children: [
                const TabBar( 
                  tabs: [
                    Tab(text: 'All Notes'),
                    Tab(text: 'Credit Notes'),
                    Tab(text: 'Debit Notes'),
                  ],
                  labelColor: AppColors.primary,
                  unselectedLabelColor: AppColors.textSecondary,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      _NotesList(notes: notes, currency: currency),
                      _NotesList(notes: creditNotes, currency: currency),
                      _NotesList(notes: debitNotes, currency: currency),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.receipt_long_outlined, size: 80, color: AppColors.textHint),
          const SizedBox(height: 16),
          const Text('No Credit or Debit Notes', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () => _showNoteTypeDialog(context),
            icon: const Icon(Icons.add),
            label: const Text('Create Note'),
          ),
        ],
      ),
    );
  }

  void _showNoteTypeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Select Note Type'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.arrow_downward, color: AppColors.success),
              title: const Text('Credit Note'),
              subtitle: const Text('Sales return, discount, or adjustment'),
              onTap: () {
                Navigator.pop(ctx);
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => const AddCreditNoteScreen(noteType: 'credit_note'),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.arrow_upward, color: AppColors.warning),
              title: const Text('Debit Note'),
              subtitle: const Text('Purchase return or charge adjustment'),
              onTap: () {
                Navigator.pop(ctx);
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => const AddCreditNoteScreen(noteType: 'debit_note'),
                ));
              },
            ),
          ],
        ),
        actions: [TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel'))],
      ),
    );
  }
}

class _NotesList extends StatelessWidget {
  final List<CreditNote> notes;
  final String currency;

  const _NotesList({required this.notes, required this.currency});

  @override
  Widget build(BuildContext context) {
    if (notes.isEmpty) {
      return const Center(
        child: Text('No notes in this category',
            style: TextStyle(color: AppColors.textSecondary)),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: notes.length,
      itemBuilder: (context, index) =>
          _NoteCard(note: notes[index], currency: currency),
    );
  }
}

class _NoteCard extends StatelessWidget {
  final CreditNote note;
  final String currency;

  const _NoteCard({required this.note, required this.currency});

  @override
  Widget build(BuildContext context) {
    final isCredit = note.noteType == 'credit_note';
    final dateFormat = DateFormat('dd MMM yyyy');

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () => _showNoteDetail(context),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: isCredit
                          ? AppColors.success.withValues(alpha: 0.1)
                          : AppColors.warning.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      isCredit ? 'CN' : 'DN',
                      style: TextStyle(
                        color:
                            isCredit ? AppColors.success : AppColors.warning,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(note.noteNumber,
                            style:
                                const TextStyle(fontWeight: FontWeight.w600)),
                        Text(dateFormat.format(note.noteDate),
                            style: const TextStyle(
                                fontSize: 12, color: AppColors.textSecondary)),
                      ],
                    ),
                  ),
                  Text(
                    '$currency${note.totalAmount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isCredit ? AppColors.success : AppColors.warning,
                    ),
                  ),
                ],
              ),
              const Divider(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Party',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.textSecondary)),
                        Text(note.partyName,
                            style:
                                const TextStyle(fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Reason',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.textSecondary)),
                        Text(_formatReason(note.reason),
                            style:
                                const TextStyle(fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ),
              if (note.originalInvoiceNumber != null) ...[
                const SizedBox(height: 8),
                Text('Ref: ${note.originalInvoiceNumber}',
                    style: const TextStyle(
                        fontSize: 12, color: AppColors.textSecondary)),
              ],
            ],
          ),
        ),
      ),
    );
  }

  void _showNoteDetail(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (ctx) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 0.95,
        expand: false,
        builder: (ctx, scrollController) => _NoteDetailSheet(
          note: note,
          currency: currency,
          scrollController: scrollController,
        ),
      ),
    );
  }

  String _formatReason(String reason) => switch (reason) {
        'sales_return' => 'Sales Return',
        'purchase_return' => 'Purchase Return',
        'deficiency' => 'Deficiency',
        'discount' => 'Discount',
        'rate_difference' => 'Rate Difference',
        _ => 'Other',
      };
}

class _NoteDetailSheet extends StatelessWidget {
  final CreditNote note;
  final String currency;
  final ScrollController scrollController;

  const _NoteDetailSheet({
    required this.note,
    required this.currency,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final isCredit = note.noteType == 'credit_note';
    final dateFormat = DateFormat('dd MMM yyyy');

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isCredit
                  ? AppColors.success.withValues(alpha: 0.1)
                  : AppColors.warning.withValues(alpha: 0.1),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Row(
              children: [
                Icon(
                  isCredit ? Icons.arrow_downward : Icons.arrow_upward,
                  color: isCredit ? AppColors.success : AppColors.warning,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(note.noteNumber,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(
                        isCredit ? 'Credit Note' : 'Debit Note',
                        style: TextStyle(
                          color:
                              isCredit ? AppColors.success : AppColors.warning,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '$currency${note.totalAmount.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              controller: scrollController,
              padding: const EdgeInsets.all(16),
              children: [
                _DetailRow('Date', dateFormat.format(note.noteDate)),
                _DetailRow('Party', note.partyName),
                if (note.partyGstin != null)
                  _DetailRow('Party GSTIN', note.partyGstin!),
                if (note.originalInvoiceNumber != null)
                  _DetailRow('Original Invoice', note.originalInvoiceNumber!),
                const Divider(),
                const Text('Items',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                ...note.items.map((item) => ListTile(
                      dense: true,
                      title: Text(item.itemName ?? 'Item'),
                      subtitle: Text(
                          'Qty: ${item.quantity} × $currency${item.unitPrice.toStringAsFixed(2)}'),
                      trailing: Text(
                          '$currency${item.totalAmount.toStringAsFixed(2)}'),
                    )),
                const Divider(),
                _DetailRow('Taxable Value',
                    '$currency${note.subtotal.toStringAsFixed(2)}'),
                if (note.totalCgst > 0)
                  _DetailRow(
                      'CGST', '$currency${note.totalCgst.toStringAsFixed(2)}'),
                if (note.totalSgst > 0)
                  _DetailRow(
                      'SGST', '$currency${note.totalSgst.toStringAsFixed(2)}'),
                if (note.totalIgst > 0)
                  _DetailRow(
                      'IGST', '$currency${note.totalIgst.toStringAsFixed(2)}'),
                _DetailRow('Total',
                    '$currency${note.totalAmount.toStringAsFixed(2)}',
                    isBold: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;

  const _DetailRow(this.label, this.value, {this.isBold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: AppColors.textSecondary)),
          Text(value,
              style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}

