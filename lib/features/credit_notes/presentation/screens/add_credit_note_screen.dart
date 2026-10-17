import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/database/schemas/credit_note.dart';
import '../../../../core/database/schemas/item.dart';
import '../../../../core/database/schemas/party.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/services/settings_service.dart';
import '../../../inventory/presentation/providers/inventory_provider.dart';
import '../../../khata/presentation/providers/party_provider.dart';
import '../providers/credit_note_provider.dart';

class AddCreditNoteScreen extends ConsumerStatefulWidget {
  final String noteType; // 'credit_note' or 'debit_note'

  const AddCreditNoteScreen({
    super.key,
    required this.noteType,
  });

  @override
  ConsumerState<AddCreditNoteScreen> createState() => _AddCreditNoteScreenState();
}

class _AddCreditNoteScreenState extends ConsumerState<AddCreditNoteScreen> {
  final _formKey = GlobalKey<FormState>();
  String _noteNumber = '';
  DateTime _noteDate = DateTime.now();
  Party? _selectedParty;
  final _invoiceNumCtrl = TextEditingController();
  DateTime? _invoiceDate;
  late String _reason;
  String _taxMode = 'intra_state';
  String _placeOfSupply = '';
  final _descCtrl = TextEditingController();
  bool _isLoading = true;
  final List<CreditNoteLineItem> _items = [];

  bool get _isCredit => widget.noteType == 'credit_note';

  @override
  void initState() {
    super.initState();
    _reason = _isCredit ? 'sales_return' : 'purchase_return';
    _initData();
  }

  Future<void> _initData() async {
    final num = await ref
        .read(creditNoteProvider.notifier)
        .getNextNoteNumber(noteType: widget.noteType);
    final businessState = ref.read(settingsProvider).businessState;
    if (mounted) {
      setState(() {
        _noteNumber = num;
        _placeOfSupply = businessState.isNotEmpty ? businessState : 'Delhi';
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _invoiceNumCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  double get _subtotal =>
      _items.fold(0.0, (sum, item) => sum + item.taxableAmount);

  double get _totalCgst =>
      _taxMode == 'intra_state' ? _items.fold(0.0, (s, i) => s + i.cgstAmount) : 0.0;

  double get _totalSgst =>
      _taxMode == 'intra_state' ? _items.fold(0.0, (s, i) => s + i.sgstAmount) : 0.0;

  double get _totalIgst =>
      _taxMode == 'inter_state' ? _items.fold(0.0, (s, i) => s + i.igstAmount) : 0.0;

  double get _grandTotal => _subtotal + _totalCgst + _totalSgst + _totalIgst;

  void _recalculateTaxes() {
    for (final item in _items) {
      final taxable = item.quantity * item.unitPrice;
      item.taxableAmount = taxable;
      final gst = taxable * (item.gstRate / 100);
      if (_taxMode == 'intra_state') {
        item.cgstAmount = gst / 2;
        item.sgstAmount = gst / 2;
        item.igstAmount = 0.0;
      } else {
        item.cgstAmount = 0.0;
        item.sgstAmount = 0.0;
        item.igstAmount = gst;
      }
      item.totalAmount = taxable + gst;
    }
  }

  void _onPartyChanged(Party? party) {
    setState(() {
      _selectedParty = party;
      if (party?.state != null && party!.state!.isNotEmpty) {
        _placeOfSupply = party.state!;
      }
      final businessState = ref.read(settingsProvider).businessState;
      _taxMode = (businessState.isNotEmpty &&
              _placeOfSupply.isNotEmpty &&
              businessState.toLowerCase() != _placeOfSupply.toLowerCase())
          ? 'inter_state'
          : 'intra_state';
      _recalculateTaxes();
    });
  }
  Future<void> _saveNote() async {
    if (_selectedParty == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a party')),
      );
      return;
    }
    if (_items.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please add at least one item')),
      );
      return;
    }

    final seq = int.tryParse(_noteNumber.split('-').last) ?? 0;
    final note = CreditNote()
      ..noteNumber = _noteNumber
      ..noteSeq = seq
      ..noteType = widget.noteType
      ..originalInvoiceNumber = _invoiceNumCtrl.text.trim().isEmpty
          ? null
          : _invoiceNumCtrl.text.trim()
      ..originalInvoiceDate = _invoiceDate
      ..noteDate = _noteDate
      ..partyId = _selectedParty!.id
      ..partyName = _selectedParty!.name
      ..partyPhone = _selectedParty!.phoneNumber
      ..partyGstin = _selectedParty!.gstin
      ..partyState = _selectedParty!.state
      ..placeOfSupplyState = _placeOfSupply
      ..taxMode = _taxMode
      ..reason = _reason
      ..description = _descCtrl.text.trim().isEmpty ? null : _descCtrl.text.trim()
      ..items = List.from(_items)
      ..subtotal = _subtotal
      ..totalCgst = _totalCgst
      ..totalSgst = _totalSgst
      ..totalIgst = _totalIgst
      ..totalGst = _totalCgst + _totalSgst + _totalIgst
      ..totalAmount = _grandTotal;

    await ref.read(creditNoteProvider.notifier).addNote(note);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${_isCredit ? "Credit Note" : "Debit Note"} created successfully')),
      );
      Navigator.pop(context);
    }
  }

  void _showAddItemDialog() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => _AddItemSheet(
        isCredit: _isCredit,
        taxMode: _taxMode,
        onAdd: (item) {
          setState(() {
            _items.add(item);
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final currency = ref.watch(settingsProvider).currencySymbol;
    final partiesState = ref.watch(partyProvider);
    final parties = partiesState.value ?? [];
    final filteredParties = _isCredit
        ? parties.where((p) => p.partyType == 'customer' || p.partyType.isEmpty).toList()
        : parties.where((p) => p.partyType == 'supplier' || p.partyType.isEmpty).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(_isCredit ? 'New Credit Note' : 'New Debit Note'),
        actions: [
          TextButton.icon(
            onPressed: _saveNote,
            icon: const Icon(Icons.check),
            label: const Text('Save'),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Note #: $_noteNumber',
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        OutlinedButton.icon(
                          onPressed: () async {
                            final picked = await showDatePicker(
                              context: context,
                              initialDate: _noteDate,
                              firstDate: DateTime(2020),
                              lastDate: DateTime.now().add(const Duration(days: 30)),
                            );
                            if (picked != null) setState(() => _noteDate = picked);
                          },
                          icon: const Icon(Icons.calendar_today, size: 16),
                          label: Text(DateFormat('dd/MM/yyyy').format(_noteDate)),
                        ),
                      ],
                    ),
                    const Divider(height: 24),
                    DropdownButtonFormField<Party>(
                      initialValue: _selectedParty,
                      decoration: InputDecoration(
                        labelText: _isCredit ? 'Select Customer *' : 'Select Supplier *',
                        border: const OutlineInputBorder(),
                        isDense: true,
                      ),
                      items: (filteredParties.isNotEmpty ? filteredParties : parties).map((party) {
                        return DropdownMenuItem<Party>(
                          value: party,
                          child: Text('${party.name}${party.phoneNumber != null ? " (${party.phoneNumber})" : ""}'),
                        );
                      }).toList(),
                      onChanged: _onPartyChanged,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _invoiceNumCtrl,
                            decoration: const InputDecoration(
                              labelText: 'Original Invoice / Bill #',
                              border: OutlineInputBorder(),
                              isDense: true,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final picked = await showDatePicker(
                                context: context,
                                initialDate: _invoiceDate ?? DateTime.now(),
                                firstDate: DateTime(2020),
                                lastDate: DateTime.now(),
                              );
                              if (picked != null) setState(() => _invoiceDate = picked);
                            },
                            icon: const Icon(Icons.calendar_month, size: 16),
                            label: Text(_invoiceDate == null
                                ? 'Invoice Date'
                                : DateFormat('dd/MM/yyyy').format(_invoiceDate!)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    DropdownButtonFormField<String>(
                      initialValue: _reason,
                      decoration: const InputDecoration(
                        labelText: 'Reason for Note',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      items: const [
                        DropdownMenuItem(value: 'sales_return', child: Text('01 - Sales Return')),
                        DropdownMenuItem(value: 'purchase_return', child: Text('02 - Purchase Return')),
                        DropdownMenuItem(value: 'discount', child: Text('03 - Post Sale Discount')),
                        DropdownMenuItem(value: 'deficiency', child: Text('04 - Deficiency in Services')),
                        DropdownMenuItem(value: 'rate_difference', child: Text('05 - Rate Difference')),
                        DropdownMenuItem(value: 'other', child: Text('06 - Other Adjustments')),
                      ],
                      onChanged: (val) {
                        if (val != null) setState(() => _reason = val);
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Line Items', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        FilledButton.tonalIcon(
                          onPressed: _showAddItemDialog,
                          icon: const Icon(Icons.add, size: 18),
                          label: const Text('Add Item'),
                        ),
                      ],
                    ),
                    const Divider(height: 20),
                    if (_items.isEmpty)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Center(
                          child: Text('No items added yet', style: TextStyle(color: AppColors.textSecondary)),
                        ),
                      )
                    else
                      ..._items.asMap().entries.map((entry) {
                        final idx = entry.key;
                        final item = entry.value;
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(item.itemName ?? 'Item', style: const TextStyle(fontWeight: FontWeight.w600)),
                          subtitle: Text('${item.quantity} × $currency${item.unitPrice.toStringAsFixed(2)} | GST: ${item.gstRate.toStringAsFixed(0)}%'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('$currency${item.totalAmount.toStringAsFixed(2)}', style: const TextStyle(fontWeight: FontWeight.bold)),
                              IconButton(
                                icon: const Icon(Icons.delete_outline, color: AppColors.danger, size: 20),
                                onPressed: () => setState(() => _items.removeAt(idx)),
                              ),
                            ],
                          ),
                        );
                      }),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _RowPrice('Taxable Amount', '$currency${_subtotal.toStringAsFixed(2)}'),
                    if (_taxMode == 'intra_state') ...[
                      _RowPrice('CGST', '$currency${_totalCgst.toStringAsFixed(2)}'),
                      _RowPrice('SGST', '$currency${_totalSgst.toStringAsFixed(2)}'),
                    ] else ...[
                      _RowPrice('IGST', '$currency${_totalIgst.toStringAsFixed(2)}'),
                    ],
                    const Divider(height: 16),
                    _RowPrice('Total Note Value', '$currency${_grandTotal.toStringAsFixed(2)}', isBold: true),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descCtrl,
              maxLines: 2,
              decoration: const InputDecoration(
                labelText: 'Notes / Remarks (Optional)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: _saveNote,
              style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(48)),
              child: Text('Create ${_isCredit ? "Credit Note" : "Debit Note"}'),
            ),
          ],
        ),
      ),
    );
  }
}

class _RowPrice extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;

  const _RowPrice(this.label, this.value, {this.isBold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(
              color: isBold ? AppColors.textPrimary : AppColors.textSecondary,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
          Text(value, style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
              fontSize: isBold ? 16 : 14)),
        ],
      ),
    );
  }
}

class _AddItemSheet extends ConsumerStatefulWidget {
  final bool isCredit;
  final String taxMode;
  final ValueChanged<CreditNoteLineItem> onAdd;

  const _AddItemSheet({
    required this.isCredit,
    required this.taxMode,
    required this.onAdd,
  });

  @override
  ConsumerState<_AddItemSheet> createState() => _AddItemSheetState();
}

class _AddItemSheetState extends ConsumerState<_AddItemSheet> {
  final _nameCtrl = TextEditingController();
  final _hsnCtrl = TextEditingController();
  final _qtyCtrl = TextEditingController(text: '1');
  final _priceCtrl = TextEditingController();
  double _gstRate = 18.0;
  Item? _selectedDbItem;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _hsnCtrl.dispose();
    _qtyCtrl.dispose();
    _priceCtrl.dispose();
    super.dispose();
  }

  void _onSelectDbItem(Item? item) {
    if (item == null) return;
    setState(() {
      _selectedDbItem = item;
      _nameCtrl.text = item.name;
      _hsnCtrl.text = item.hsnCode ?? '';
      _priceCtrl.text = widget.isCredit
          ? item.salesPrice.toStringAsFixed(2)
          : item.purchasePrice.toStringAsFixed(2);
      _gstRate = item.gstRate;
    });
  }

  void _submit() {
    final name = _nameCtrl.text.trim();
    final qty = double.tryParse(_qtyCtrl.text.trim()) ?? 0.0;
    final price = double.tryParse(_priceCtrl.text.trim()) ?? 0.0;

    if (name.isEmpty || qty <= 0 || price < 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter valid item name, qty, and price')),
      );
      return;
    }

    final taxable = qty * price;
    final gst = taxable * (_gstRate / 100);
    final isIntra = widget.taxMode == 'intra_state';

    final line = CreditNoteLineItem()
      ..itemId = _selectedDbItem?.id
      ..itemName = name
      ..hsnCode = _hsnCtrl.text.trim().isEmpty ? null : _hsnCtrl.text.trim()
      ..quantity = qty
      ..unit = _selectedDbItem?.unit ?? 'pcs'
      ..unitPrice = price
      ..taxableAmount = taxable
      ..gstRate = _gstRate
      ..cgstAmount = isIntra ? gst / 2 : 0.0
      ..sgstAmount = isIntra ? gst / 2 : 0.0
      ..igstAmount = isIntra ? 0.0 : gst
      ..cessRate = 0.0
      ..cessAmount = 0.0
      ..totalAmount = taxable + gst;

    widget.onAdd(line);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final itemsState = ref.watch(inventoryProvider);
    final inventoryItems = itemsState.value ?? [];

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Add Line Item',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 12),
            if (inventoryItems.isNotEmpty) ...[
              DropdownButtonFormField<Item>(
                initialValue: _selectedDbItem,
                decoration: const InputDecoration(
                  labelText: 'Pick from Inventory (Optional)',
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
                items: inventoryItems.map((i) {
                  return DropdownMenuItem<Item>(
                    value: i,
                    child: Text('${i.name} (Stock: ${i.stockQuantity})'),
                  );
                }).toList(),
                onChanged: _onSelectDbItem,
              ),
              const SizedBox(height: 12),
            ],
            TextFormField(
              controller: _nameCtrl,
              decoration: const InputDecoration(
                labelText: 'Item Name *',
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _hsnCtrl,
                    decoration: const InputDecoration(
                      labelText: 'HSN/SAC Code',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: DropdownButtonFormField<double>(
                    initialValue: _gstRate,
                    decoration: const InputDecoration(
                      labelText: 'GST Rate',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                    items: const [0.0, 5.0, 12.0, 18.0, 28.0].map((r) {
                      return DropdownMenuItem<double>(
                        value: r,
                        child: Text('${r.toStringAsFixed(0)}%'),
                      );
                    }).toList(),
                    onChanged: (val) {
                      if (val != null) setState(() => _gstRate = val);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _qtyCtrl,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    decoration: const InputDecoration(
                      labelText: 'Quantity *',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextFormField(
                    controller: _priceCtrl,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    decoration: const InputDecoration(
                      labelText: 'Unit Price *',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: _submit,
              style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(44)),
              child: const Text('Add to Note'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
