import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/database/schemas/purchase.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_header.dart';
import '../../../../features/khata/presentation/providers/party_provider.dart';
import '../providers/purchase_provider.dart';
import 'add_purchase_item_screen.dart';

class PurchaseScreen extends ConsumerStatefulWidget {
  const PurchaseScreen({super.key});

  @override
  ConsumerState<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends ConsumerState<PurchaseScreen> {
  final _partyNameController = TextEditingController();
  final _phoneController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  String? _billNumber;
  List<PurchaseLineItem> _lineItems = [];
  double _totalAmount = 0.0;

  // Bill summary (derived from _lineItems)
  double get _subtotal =>
      _lineItems.fold(0, (sum, i) => sum + i.quantity * i.rate);
  double get _totalDiscount =>
      _lineItems.fold(0, (sum, i) => sum + i.discountAmount);
  double get _totalCgst => _lineItems.fold(0, (sum, i) => sum + i.cgstAmount);
  double get _totalSgst => _lineItems.fold(0, (sum, i) => sum + i.sgstAmount);
  double get _totalIgst => _lineItems.fold(0, (sum, i) => sum + i.igstAmount);
  double get _totalGst =>
      _lineItems.fold(0, (sum, i) => sum + i.taxAmount);

  @override
  void initState() {
    super.initState();
    _generateBillNumber();
  }

  @override
  void dispose() {
    _partyNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _generateBillNumber() async {
    final notifier = ref.read(purchaseProvider.notifier);
    final billNo = await notifier.nextBillNumber();
    setState(() {
      _billNumber = billNo;
    });
  }

  void _recalculateTotal() {
    double total = 0;
    for (final item in _lineItems) {
      total += item.totalAmount;
    }
    setState(() {
      _totalAmount = total;
    });
  }

  void _removeItem(int index) {
    setState(() {
      _lineItems.removeAt(index);
    });
    _recalculateTotal();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: AppColors.primary,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _navigateToAddItems() async {
    final result = await Navigator.push<List<PurchaseLineItem>>(
      context,
      MaterialPageRoute(builder: (_) => const AddPurchaseItemScreen()),
    );
    if (result != null && result.isNotEmpty) {
      setState(() {
        _lineItems.addAll(result);
      });
      _recalculateTotal();
    }
  }

  Future<void> _savePurchase({bool saveAndNew = false}) async {
    if (_partyNameController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a Party Name'),
          backgroundColor: AppColors.danger,
        ),
      );
      return;
    }
    if (_billNumber == null) return;

    // Auto-link to an existing party by name (case-insensitive match)
    int? matchedPartyId;
    final parties = ref.read(partyProvider).asData?.value ?? [];
    final partyName = _partyNameController.text.trim();
    for (final party in parties) {
      if (party.name.toLowerCase() == partyName.toLowerCase()) {
        matchedPartyId = party.id;
        break;
      }
    }

    final seqNum = int.tryParse(_billNumber!.split('-').last) ?? 0;

    final purchase = Purchase()
      ..billNumber = _billNumber!
      ..billSeq = seqNum
      ..partyId = matchedPartyId
      ..partyName = partyName
      ..partyPhone = _phoneController.text.trim().isEmpty
          ? null
          : _phoneController.text.trim()
      ..purchaseDate = _selectedDate
      ..items = _lineItems
      ..subtotal = _subtotal
      ..totalDiscount = _totalDiscount
      ..totalCgst = _totalCgst
      ..totalSgst = _totalSgst
      ..totalIgst = _totalIgst
      ..totalGst = _totalGst
      ..totalAmount = _totalAmount
      ..paymentStatus = 'paid'
      ..createdAt = DateTime.now();

    await ref.read(purchaseProvider.notifier).addPurchase(purchase);
    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Purchase ${_billNumber!} saved successfully!'),
        backgroundColor: AppColors.success,
      ),
    );

    if (saveAndNew) {
      _partyNameController.clear();
      _phoneController.clear();
      setState(() {
        _selectedDate = DateTime.now();
        _lineItems = [];
        _totalAmount = 0.0;
      });
      await _generateBillNumber();
    } else {
      Navigator.pop(context);
    }
  }

  // ──────────────────────────────────────────────────────────
  // BUILD
  // ──────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(title: 'Purchase', showBackButton: true),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Gradient Header Card
                      _buildHeaderCard(),
                      const SizedBox(height: 16),
                      
                      // Form Card
                      _buildFormCard(),
                      
                      const SizedBox(height: 20),
                      
                      // Total Amount Banner (visible when items exist)
                      if (_lineItems.isNotEmpty) ...[
                        _buildTotalBanner(),
                        const SizedBox(height: 20),
                      ],
                      
                      // Action Buttons
                      _buildActionBar(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ──────────────────────────────────────────────────────────
  // HEADER CARD
  // ──────────────────────────────────────────────────────────

  Widget _buildHeaderCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.primaryDark],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.shopping_cart_outlined,
                color: Colors.white, size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'New Purchase',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  _billNumber ?? 'Loading\u2026',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.85),
                    fontSize: 13,
                    fontFamily: 'monospace',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ──────────────────────────────────────────────────────────
  // FORM CARD
  // ──────────────────────────────────────────────────────────

  Widget _buildFormCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Party Details Section
          _buildSectionTitle('Purchase Details'),
          const SizedBox(height: 14),

          // Bill No + Date
          Row(
            children: [
              Expanded(child: _buildBillNoField()),
              const SizedBox(width: 12),
              Expanded(child: _buildDateField()),
            ],
          ),
          const SizedBox(height: 16),

          // Party Name
          _buildFieldLabel('Party Name *'),
          const SizedBox(height: 6),
          TextField(
            controller: _partyNameController,
            decoration: _inputDecoration('Enter party name'),
            textCapitalization: TextCapitalization.words,
          ),
          const SizedBox(height: 16),

          // Phone Number
          _buildFieldLabel('Phone Number'),
          const SizedBox(height: 6),
          TextField(
            controller: _phoneController,
            decoration: _inputDecoration('Enter phone number'),
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(10),
            ],
          ),

          const Divider(height: 32, color: AppColors.divider),

          // Items Section
          _buildSectionTitle('Items'),
          const SizedBox(height: 12),

          // Add Items Button
          _buildAddItemsButton(),

          // Items List
          _buildLineItemsList(),

          // Bill Summary
          _buildBillSummary(),
        ],
      ),
    );
  }

  // ──────────────────────────────────────────────────────────
  // TOTAL AMOUNT BANNER
  // ──────────────────────────────────────────────────────────

  Widget _buildTotalBanner() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primary.withValues(alpha: 0.08),
            AppColors.primary.withValues(alpha: 0.04),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.25),
          width: 1.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Total Amount',
                style: TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '\u20b9${_totalAmount.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (_totalGst > 0 || _totalDiscount > 0) ...[
                const SizedBox(height: 2),
                Text(
                  [
                    if (_totalGst > 0) 'GST: \u20b9${_totalGst.toStringAsFixed(2)}',
                    if (_totalDiscount > 0) 'Discount: -\u20b9${_totalDiscount.toStringAsFixed(2)}',
                  ].join('  |  '),
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 11,
                  ),
                ),
              ],
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Text(
                  '${_lineItems.length}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                const Text(
                  'items',
                  style: TextStyle(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ──────────────────────────────────────────────────────────
  // ACTION BAR
  // ──────────────────────────────────────────────────────────

  Widget _buildActionBar() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          // Save & New
          Expanded(
            child: _buildActionButton(
              icon: Icons.add_circle_outline,
              label: 'Save & New',
              color: AppColors.primary,
              backgroundColor: Colors.white,
              onTap: () => _savePurchase(saveAndNew: true),
            ),
          ),
          const SizedBox(width: 10),
          // Save
          Expanded(
            child: _buildActionButton(
              icon: Icons.check_circle_outline,
              label: 'Save',
              color: Colors.white,
              backgroundColor: AppColors.primary,
              onTap: () => _savePurchase(),
            ),
          ),
          const SizedBox(width: 10),
          // More options
          Container(
            decoration: BoxDecoration(
              color: AppColors.surfaceAlt,
              borderRadius: BorderRadius.circular(12),
            ),
            child: PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert,
                  color: AppColors.textSecondary, size: 22),
              onSelected: (value) {
                if (value == 'clear') _showClearConfirmation();
              },
              itemBuilder: (context) => [
                const PopupMenuItem<String>(
                  value: 'clear',
                  child: Row(
                    children: [
                      Icon(Icons.delete_outline,
                          color: AppColors.danger, size: 20),
                      SizedBox(width: 12),
                      Text('Clear All Items'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ──────────────────────────────────────────────────────────
  // REUSABLE SMALL WIDGETS
  // ──────────────────────────────────────────────────────────

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildFieldLabel(String label) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppColors.textSecondary,
      ),
    );
  }

  Widget _buildBillNoField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldLabel('Bill No.'),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          decoration: BoxDecoration(
            color: AppColors.surfaceAlt,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.border),
          ),
          child: Text(
            _billNumber ?? 'Loading\u2026',
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
              fontFamily: 'monospace',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldLabel('Date'),
        const SizedBox(height: 6),
        GestureDetector(
          onTap: _pickDate,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            decoration: BoxDecoration(
              color: AppColors.surfaceAlt,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.border),
            ),
            child: Row(
              children: [
                const Icon(Icons.calendar_today_outlined,
                    size: 16, color: AppColors.primary),
                const SizedBox(width: 8),
                Text(
                  DateFormat('dd/MM/yyyy').format(_selectedDate),
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAddItemsButton() {
    return GestureDetector(
      onTap: _navigateToAddItems,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: AppColors.primaryContainer,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.primary.withValues(alpha: 0.3),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.add_circle_outline,
                color: AppColors.primary, size: 22),
            const SizedBox(width: 8),
            Text(
              'Add Items (${_lineItems.length})',
              style: const TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLineItemsList() {
    if (_lineItems.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Item List',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.primaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                '${_lineItems.length} items',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ...List.generate(_lineItems.length, (index) {
          final item = _lineItems[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.surfaceAlt,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.border),
            ),
            child: Row(
              children: [
                // Number badge
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.primary, AppColors.primaryDark],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),

                // Item info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.itemName ?? 'Unnamed',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.textPrimary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '${item.quantity} ${item.unit ?? 'Pcs'} \u00d7 \u20b9${item.rate.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      if (item.discountAmount > 0)
                        Text(
                          'Discount: -\u20b9${item.discountAmount.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 11,
                            color: AppColors.danger,
                          ),
                        ),
                      if (item.gstRate > 0)
                        Text(
                          item.taxType.contains('IGST')
                              ? 'IGST ${item.gstRate.toStringAsFixed(1)}% = \u20b9${item.igstAmount.toStringAsFixed(2)}'
                              : 'CGST ${item.cgstRate.toStringAsFixed(1)}% + SGST ${item.sgstRate.toStringAsFixed(1)}% = \u20b9${(item.cgstAmount + item.sgstAmount).toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 11,
                            color: AppColors.textSecondary,
                          ),
                        ),
                    ],
                  ),
                ),

                // Item total
                Text(
                  '\u20b9${item.totalAmount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(width: 6),

                // Remove
                GestureDetector(
                  onTap: () => _removeItem(index),
                  child: const Icon(
                    Icons.remove_circle_outline,
                    color: AppColors.danger,
                    size: 22,
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }

  Widget _buildBillSummary() {
    if (_lineItems.isEmpty) return const SizedBox.shrink();

    return Column(
      children: [
        const Divider(height: 28, color: AppColors.divider),

        // Subtotal
        _summaryRow('Subtotal', '\u20b9${_subtotal.toStringAsFixed(2)}'),

        // Discount (only if non-zero)
        if (_totalDiscount > 0)
          _summaryRow(
            'Total Discount',
            '-\u20b9${_totalDiscount.toStringAsFixed(2)}',
            valueColor: AppColors.danger,
          ),

        // CGST (only if non-zero)
        if (_totalCgst > 0)
          _summaryRow('CGST', '\u20b9${_totalCgst.toStringAsFixed(2)}'),

        // SGST (only if non-zero)
        if (_totalSgst > 0)
          _summaryRow('SGST', '\u20b9${_totalSgst.toStringAsFixed(2)}'),

        // IGST (only if non-zero)
        if (_totalIgst > 0)
          _summaryRow('IGST', '\u20b9${_totalIgst.toStringAsFixed(2)}'),

        // Total GST (only when IGST + CGST/SGST are mixed in the bill)
        if (_totalGst > 0 && _totalCgst > 0 && _totalIgst > 0)
          ...[
            const SizedBox(height: 4),
            _summaryRow(
              'Total GST',
              '\u20b9${_totalGst.toStringAsFixed(2)}',
              valueStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
              ),
            ),
          ],

        // Grand total divider
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          child: const Divider(height: 1, color: AppColors.primary),
        ),

        // Grand Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Bill Total',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            Text(
              '\u20b9${_totalAmount.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _summaryRow(String label, String value, {Color? valueColor, TextStyle? valueStyle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.textSecondary,
            ),
          ),
          Text(
            value,
            style: valueStyle ??
                TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: valueColor ?? AppColors.textPrimary,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required Color backgroundColor,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.primary, width: 1.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 18),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: AppColors.textHint),
      filled: true,
      fillColor: AppColors.surfaceAlt,
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
      ),
    );
  }

  void _showClearConfirmation() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Clear All Items'),
        content: const Text(
          'Are you sure you want to remove all items from this purchase?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(ctx);
              setState(() {
                _lineItems = [];
                _totalAmount = 0.0;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.danger,
              foregroundColor: Colors.white,
            ),
            child: const Text('Clear All'),
          ),
        ],
      ),
    );
  }
}
