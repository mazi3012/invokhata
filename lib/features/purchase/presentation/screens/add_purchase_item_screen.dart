import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/schemas/purchase.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_header.dart';
import '../../../inventory/presentation/providers/inventory_provider.dart';

class AddPurchaseItemScreen extends ConsumerStatefulWidget {
  const AddPurchaseItemScreen({super.key});

  @override
  ConsumerState<AddPurchaseItemScreen> createState() => _AddPurchaseItemScreenState();
}

class _AddPurchaseItemScreenState extends ConsumerState<AddPurchaseItemScreen> {
  final _itemNameController = TextEditingController();
  final _itemNameFocusNode = FocusNode();
  final _hsnController = TextEditingController();
  final _quantityController = TextEditingController(text: '1');
  final _rateController = TextEditingController();
  final _discountController = TextEditingController(text: '0');
  String _selectedUnit = 'Pcs';
  String _selectedTaxType = 'Without Tax';
  String _selectedDiscountType = 'none'; // 'none' | 'percentage' | 'flat'
  final List<PurchaseLineItem> _addedItems = [];

  static const List<String> _units = [
    'Pcs', 'Box', 'Kg', 'Gms', 'Ltr', 'Mtr', 'Nos', 'Bag',
    'Pack', 'Bottle', 'Can', 'Carton', 'Dozen', 'Pair', 'Set',
    'Quintal', 'Ton', 'Roll',
  ];

  /// All supported tax options:
  ///  - CGST+SGST (intra-state purchases, GST split equally between both)
  ///  - IGST (inter-state purchases, full GST in one component)
  static const List<String> _taxTypes = [
    'Without Tax',
    'CGST+SGST@0%', 'CGST+SGST@0.25%', 'CGST+SGST@3%', 'CGST+SGST@5%',
    'CGST+SGST@12%', 'CGST+SGST@18%', 'CGST+SGST@28%',
    'IGST@0%', 'IGST@0.25%', 'IGST@3%', 'IGST@5%',
    'IGST@12%', 'IGST@18%', 'IGST@28%',
  ];

  @override
  void dispose() {
    _itemNameController.dispose();
    _itemNameFocusNode.dispose();
    _hsnController.dispose();
    _quantityController.dispose();
    _rateController.dispose();
    _discountController.dispose();
    super.dispose();
  }

  /// Extracts the combined GST percentage from a tax-type label.
  double _parseGstRate(String taxType) {
    if (taxType == 'Without Tax') return 0.0;
    final match = RegExp(r'@([\d.]+)%').firstMatch(taxType);
    return match != null ? double.tryParse(match.group(1)!) ?? 0.0 : 0.0;
  }

  bool _isIgst(String taxType) => taxType.startsWith('IGST');

  PurchaseLineItem _buildLineItem() {
    final qty = double.tryParse(_quantityController.text) ?? 1.0;
    final rate = double.tryParse(_rateController.text) ?? 0.0;
    final gstRate = _parseGstRate(_selectedTaxType);
    final baseAmount = qty * rate;

    // Discount
    final discountVal = double.tryParse(_discountController.text) ?? 0.0;
    double discountAmount = 0.0;
    if (_selectedDiscountType == 'percentage') {
      discountAmount = baseAmount * discountVal / 100;
    } else if (_selectedDiscountType == 'flat') {
      discountAmount = discountVal.clamp(0.0, baseAmount).toDouble();
    }
    final taxableAmount = baseAmount - discountAmount;

    // Tax split
    double cgstRate = 0.0, sgstRate = 0.0, igstRate = 0.0;
    double cgstAmount = 0.0, sgstAmount = 0.0, igstAmount = 0.0;
    if (gstRate > 0) {
      final totalGst = taxableAmount * gstRate / 100;
      if (_isIgst(_selectedTaxType)) {
        igstRate = gstRate;
        igstAmount = totalGst;
      } else {
        cgstRate = gstRate / 2;
        sgstRate = gstRate / 2;
        cgstAmount = totalGst / 2;
        sgstAmount = totalGst / 2;
      }
    }

    final taxAmount = cgstAmount + sgstAmount + igstAmount;
    final totalAmount = taxableAmount + taxAmount;

    // Auto-link to an existing inventory item by name so stock increases on save.
    int? matchedItemId;
    final inventoryItems = ref.read(inventoryProvider).asData?.value ?? [];
    final itemName = _itemNameController.text.trim();
    for (final item in inventoryItems) {
      if (item.name.toLowerCase() == itemName.toLowerCase()) {
        matchedItemId = item.id;
        break;
      }
    }

    return PurchaseLineItem()
      ..itemId = matchedItemId
      ..itemName = itemName
      ..unit = _selectedUnit
      ..hsnCode = _hsnController.text.trim().isEmpty
          ? null
          : _hsnController.text.trim()
      ..quantity = qty
      ..rate = rate
      ..taxType = _selectedTaxType
      ..gstRate = gstRate
      ..cgstRate = cgstRate
      ..sgstRate = sgstRate
      ..igstRate = igstRate
      ..cgstAmount = cgstAmount
      ..sgstAmount = sgstAmount
      ..igstAmount = igstAmount
      ..taxAmount = taxAmount
      ..discountType = _selectedDiscountType
      ..discountValue = discountVal
      ..discountAmount = discountAmount
      ..totalAmount = totalAmount;
  }

  /// Returns an error message for invalid item inputs, or null when valid.
  /// Rejects negative quantities/rates, non-numeric input and empty names.
  String? _validateItemInput() {
    if (_itemNameController.text.trim().isEmpty) {
      return 'Please enter item name';
    }
    final qty = double.tryParse(_quantityController.text.trim());
    if (qty == null || !qty.isFinite || qty < 1) {
      return 'Enter a valid quantity (at least 1)';
    }
    final rate = double.tryParse(_rateController.text.trim());
    if (rate == null || !rate.isFinite || rate < 0) {
      return 'Enter a valid rate';
    }
    if (_selectedDiscountType != 'none') {
      final discount = double.tryParse(_discountController.text.trim());
      if (discount == null || !discount.isFinite || discount < 0) {
        return 'Enter a valid discount';
      }
    }
    return null;
  }

  void _showValidationError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppColors.danger,
      ),
    );
  }

  void _addAndContinue() {
    final error = _validateItemInput();
    if (error != null) {
      _showValidationError(error);
      return;
    }
    setState(() {
      _addedItems.add(_buildLineItem());
    });
    _itemNameController.clear();
    _hsnController.clear();
    _quantityController.text = '1';
    _rateController.clear();
    _discountController.text = '0';
    setState(() {
      _selectedTaxType = 'Without Tax';
      _selectedDiscountType = 'none';
    });
  }

  void _addAndSave() {
    final error = _validateItemInput();
    if (error != null) {
      _showValidationError(error);
      return;
    }
    _addedItems.add(_buildLineItem());
    Navigator.pop(context, _addedItems);
  }

  @override
  Widget build(BuildContext context) {
    final inventoryItems = ref.watch(inventoryProvider).asData?.value ?? [];

    return Scaffold(
      appBar: const AppHeader(title: 'Add Items to Purchase', showBackButton: true),
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
                  // Item Name with autocomplete from inventory
                  _buildFieldLabel('Item Name'),
                  const SizedBox(height: 6),
                  RawAutocomplete<String>(
                    textEditingController: _itemNameController,
                    focusNode: _itemNameFocusNode,
                    optionsBuilder: (textEditingValue) {
                      if (textEditingValue.text.isEmpty) {
                        return const Iterable<String>.empty();
                      }
                      return inventoryItems
                          .map((i) => i.name)
                          .where((name) => name
                              .toLowerCase()
                              .contains(textEditingValue.text.toLowerCase()))
                          .toList();
                    },
                    onSelected: (value) {
                      _itemNameController.text = value;
                      final item = inventoryItems.firstWhere(
                        (i) => i.name == value,
                        orElse: () => inventoryItems.first,
                      );
                      _rateController.text = item.purchasePrice.toString();
                      _selectedUnit = item.unit;
                      _hsnController.text = item.hsnCode ?? '';
                      if (item.isGst) {
                        _selectedTaxType = _taxTypes.firstWhere(
                          (t) => t.endsWith('@${item.gstRate.toString()}%'),
                          orElse: () => 'CGST+SGST@18%',
                        );
                      }
                      setState(() {});
                    },
                    fieldViewBuilder: (ctx, controller, focusNode, onSubmitted) {
                      return TextField(
                        controller: controller,
                        focusNode: focusNode,
                        decoration: _inputDecoration('e.g. Chocolate Cake'),
                        textCapitalization: TextCapitalization.words,
                      );
                    },
                    optionsViewBuilder: (ctx, onSelected, options) {
                      return Align(
                        alignment: Alignment.topLeft,
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(10),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxHeight: 200),
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemCount: options.length,
                              itemBuilder: (ctx, index) {
                                final option = options.elementAt(index);
                                return ListTile(
                                  dense: true,
                                  title: Text(option,
                                    style: const TextStyle(fontSize: 14)),
                                  onTap: () => onSelected(option),
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),

                  // HSN Code (optional)
                  _buildFieldLabel('HSN Code (optional)'),
                  const SizedBox(height: 6),
                  TextField(
                    controller: _hsnController,
                    decoration: _inputDecoration('e.g. 21069099'),
                    textCapitalization: TextCapitalization.characters,
                  ),
                  const SizedBox(height: 16),

                  // Quantity
                  _buildFieldLabel('Quantity'),
                  const SizedBox(height: 6),
                  TextField(
                    controller: _quantityController,
                    decoration: _inputDecoration('Quantity'),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[\d.]')),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Unit
                  _buildFieldLabel('Unit'),
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceAlt,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selectedUnit,
                        isExpanded: true,
                        items: _units.map((u) => DropdownMenuItem(
                          value: u,
                          child: Text(u, style: const TextStyle(fontSize: 14)),
                        )).toList(),
                        onChanged: (v) {
                          if (v != null) setState(() { _selectedUnit = v; });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Rate
                  _buildFieldLabel('Rate (Price/Unit)'),
                  const SizedBox(height: 6),
                  TextField(
                    controller: _rateController,
                    decoration: _inputDecoration('Rate (Price/Unit)'),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[\d.]')),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Discount
                  _buildFieldLabel('Discount'),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(child: _buildDiscountChip('none', 'None')),
                      const SizedBox(width: 8),
                      Expanded(child: _buildDiscountChip('percentage', '% Off')),
                      const SizedBox(width: 8),
                      Expanded(child: _buildDiscountChip('flat', '\u20b9 Off')),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _discountController,
                    enabled: _selectedDiscountType != 'none',
                    decoration: _inputDecoration(
                      _selectedDiscountType == 'percentage'
                          ? 'Discount % (e.g. 5)'
                          : _selectedDiscountType == 'flat'
                              ? 'Discount amount (e.g. 100)'
                              : 'No discount applied',
                    ),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[\d.]')),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Tax Type
                  _buildFieldLabel('Tax Type'),
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceAlt,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selectedTaxType,
                        isExpanded: true,
                        items: _taxTypes.map((t) => DropdownMenuItem(
                          value: t,
                          child: Text(t, style: const TextStyle(fontSize: 14)),
                        )).toList(),
                        onChanged: (v) {
                          if (v != null) setState(() { _selectedTaxType = v; });
                        },
                      ),
                    ),
                  ),

                  // Live preview of this line-item totals
                  if (_itemNameController.text.trim().isNotEmpty ||
                      _rateController.text.trim().isNotEmpty)
                    ..._buildItemPreview(),

                  // Already added items
                  if (_addedItems.isNotEmpty) ...[
                    const SizedBox(height: 20),
                    Text(
                      'Added Items (${_addedItems.length})',
                      style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold,
                        color: AppColors.primaryDark,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ...List.generate(_addedItems.length, (i) {
                      final item = _addedItems[i];
                      return _buildAddedItemCard(i, item);
                    }),
                  ],
                ],
              ),
            ),
          ),

          // Bottom Action Bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const BoxDecoration(
              color: AppColors.surface,
              border: Border(top: BorderSide(color: AppColors.border)),
            ),
            child: SafeArea(
              top: false,
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _addAndContinue,
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        side: const BorderSide(color: AppColors.primary),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('Save & New',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _addAndSave,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('Save',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
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

  Widget _buildDiscountChip(String type, String label) {
    final selected = _selectedDiscountType == type;
    return GestureDetector(
      onTap: () => setState(() { _selectedDiscountType = type; }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary : AppColors.surfaceAlt,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selected ? AppColors.primary : AppColors.border,
          ),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: selected ? Colors.white : AppColors.textSecondary,
          ),
        ),
      ),
    );
  }

  List<Widget> _buildItemPreview() {
    final line = _buildLineItem();
    return [
      const SizedBox(height: 16),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.primaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Item Total',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryDark,
              ),
            ),
            const SizedBox(height: 6),
            _previewRow('Subtotal',
                '\u20b9${(line.quantity * line.rate).toStringAsFixed(2)}'),
            if (line.discountAmount > 0)
              _previewRow('Discount',
                  '-Rs${line.discountAmount.toStringAsFixed(2)}',
                  amountColor: AppColors.danger),
            if (line.cgstAmount > 0)
              _previewRow('CGST (@${line.cgstRate.toStringAsFixed(2)}%)',
                  '\u20b9${line.cgstAmount.toStringAsFixed(2)}'),
            if (line.sgstAmount > 0)
              _previewRow('SGST (@${line.sgstRate.toStringAsFixed(2)}%)',
                  '\u20b9${line.sgstAmount.toStringAsFixed(2)}'),
            if (line.igstAmount > 0)
              _previewRow('IGST (@${line.igstRate.toStringAsFixed(2)}%)',
                  '\u20b9${line.igstAmount.toStringAsFixed(2)}'),
            const Divider(color: AppColors.border, height: 16),
            _previewRow('Total', '\u20b9${line.totalAmount.toStringAsFixed(2)}',
                isBold: true),
          ],
        ),
      ),
    ];
  }

  Widget _previewRow(String label, String value,
      {bool isBold = false, Color? amountColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isBold ? AppColors.textPrimary : AppColors.textSecondary,
              fontWeight: isBold ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 12,
              color: amountColor ?? AppColors.textPrimary,
              fontWeight: isBold ? FontWeight.w800 : FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddedItemCard(int i, PurchaseLineItem item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  '${item.itemName} (${item.quantity} ${item.unit})',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                '\u20b9${item.totalAmount.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  setState(() { _addedItems.removeAt(i); });
                },
                child:
                    const Icon(Icons.close, size: 16, color: AppColors.danger),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            'Rate Rs${item.rate.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 11, color: AppColors.textSecondary),
          ),
          if (item.discountAmount > 0)
            Text(
              'Discount -Rs${item.discountAmount.toStringAsFixed(2)}'
              '${item.discountType == 'percentage'
                  ? ' (${item.discountValue.toStringAsFixed(2)}%)'
                  : ''}',
              style: const TextStyle(fontSize: 11, color: AppColors.danger),
            ),
          if (item.gstRate > 0)
            Text(
              item.taxType.contains('IGST')
                  ? 'IGST ${item.gstRate.toStringAsFixed(2)}% = Rs${item.igstAmount.toStringAsFixed(2)}'
                  : 'CGST ${item.cgstRate.toStringAsFixed(2)}% + '
                      'SGST ${item.sgstRate.toStringAsFixed(2)}% = '
                      '\u20b9${(item.cgstAmount + item.sgstAmount).toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 11, color: AppColors.textSecondary),
            ),
        ],
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
}
