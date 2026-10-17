import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/database/schemas/item.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/barcode_scanner_screen.dart';
import '../providers/inventory_provider.dart';
import '../widgets/add_item_pricing_tab.dart';
import '../widgets/add_item_stock_tab.dart';
import '../widgets/add_item_top_section.dart';
import '../widgets/sliver_tab_bar_delegate.dart';

class AddItemScreen extends ConsumerStatefulWidget {
  final Item? itemToEdit;

  /// Optional pre-filled barcode (used when creating an item right after
  /// scanning an unknown code in the POS).
  final String? initialBarcode;

  const AddItemScreen({super.key, this.itemToEdit, this.initialBarcode});

  @override
  ConsumerState<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends ConsumerState<AddItemScreen>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  late TabController _tabController;

  late TextEditingController _nameController;
  late TextEditingController _barcodeController;
  late TextEditingController _categoryController;
  late TextEditingController _hsnController;

  late TextEditingController _salesPriceController;
  late TextEditingController _discountController;
  late TextEditingController _wholesalePriceController;
  late TextEditingController _purchasePriceController;

  late TextEditingController _openingStockController;
  late TextEditingController _asOfDateController;
  late TextEditingController _atPriceUnitController;
  late TextEditingController _minStockController;
  late TextEditingController _locationController;

  String _selectedUnit = 'Select Unit';
  String _salesTaxType = 'Without Tax';
  String _discountType = 'Percentage';
  String _purchaseTaxType = 'Without Tax';
  bool _showWholesaleField = false;

  static const List<Map<String, dynamic>> _taxRates = [
    {'name': 'None', 'rate': 0.0, 'isGst': false},
    {'name': 'Exempted', 'rate': 0.0, 'isGst': false},
    {'name': 'GST@0%', 'rate': 0.0, 'isGst': true},
    {'name': 'IGST@0%', 'rate': 0.0, 'isGst': true},
    {'name': 'GST@0.25%', 'rate': 0.25, 'isGst': true},
    {'name': 'IGST@0.25%', 'rate': 0.25, 'isGst': true},
    {'name': 'GST@3%', 'rate': 3.0, 'isGst': true},
    {'name': 'IGST@3%', 'rate': 3.0, 'isGst': true},
    {'name': 'GST@5%', 'rate': 5.0, 'isGst': true},
    {'name': 'IGST@5%', 'rate': 5.0, 'isGst': true},
    {'name': 'GST@12%', 'rate': 12.0, 'isGst': true},
    {'name': 'IGST@12%', 'rate': 12.0, 'isGst': true},
    {'name': 'GST@18%', 'rate': 18.0, 'isGst': true},
    {'name': 'IGST@18%', 'rate': 18.0, 'isGst': true},
    {'name': 'GST@28%', 'rate': 28.0, 'isGst': true},
    {'name': 'IGST@28%', 'rate': 28.0, 'isGst': true},
    {'name': 'GST@40%', 'rate': 40.0, 'isGst': true},
    {'name': 'IGST@40%', 'rate': 40.0, 'isGst': true},
  ];

  late Map<String, dynamic> _selectedTax;
  DateTime _selectedDate = DateTime.now();

  static const List<String> _standardUnits = [
    'Pcs',
    'Box',
    'Kg',
    'Gms',
    'Ltr',
    'Mtr',
    'Nos',
    'Bag',
    'Pack',
    'Bottle',
    'Can',
    'Carton',
    'Dozen',
    'Pair',
    'Set',
    'Quintal',
    'Ton',
    'Roll'
  ];

  static const List<String> _standardCategories = [
    'General',
    'Grocery',
    'Electronics',
    'Stationery',
    'Clothing & Apparel',
    'Hardware & Tools',
    'Pharmacy & Health',
    'Food & Beverages',
    'Automotive',
    'Home & Kitchen',
    'Cosmetics & Personal Care'
  ];

  bool get isEditing => widget.itemToEdit != null;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    final item = widget.itemToEdit;
    
    if (item != null && item.wholesalePrice > 0) {
      _showWholesaleField = true;
    }

    _nameController = TextEditingController(text: item?.name ?? '');
    _barcodeController = TextEditingController(
        text: item?.barcode ?? widget.initialBarcode ?? '');
    _categoryController = TextEditingController(text: item?.category ?? '');
    _hsnController = TextEditingController(text: item?.hsnCode ?? '');
    _salesPriceController = TextEditingController(
      text:
          item != null && item.salesPrice > 0 ? item.salesPrice.toString() : '',
    );
    _discountController = TextEditingController(
      text: item != null && item.discountAmount > 0
          ? item.discountAmount.toString()
          : '',
    );
    _wholesalePriceController = TextEditingController(
      text: item != null && item.wholesalePrice > 0
          ? item.wholesalePrice.toString()
          : '',
    );
    _purchasePriceController = TextEditingController(
      text: item != null && item.purchasePrice > 0
          ? item.purchasePrice.toString()
          : '',
    );
    _openingStockController = TextEditingController(
      text: item != null && item.stockQuantity > 0
          ? (item.stockQuantity % 1 == 0
              ? item.stockQuantity.toInt().toString()
              : item.stockQuantity.toString())
          : '',
    );
    _selectedDate = item?.asOfDate ?? DateTime.now();
    _asOfDateController = TextEditingController(
      text: DateFormat('dd/MM/yyyy').format(_selectedDate),
    );
    _atPriceUnitController = TextEditingController(
      text: item != null && item.atPricePerUnit > 0
          ? item.atPricePerUnit.toString()
          : '',
    );
    _minStockController = TextEditingController(
      text: item != null
          ? (item.minStockThreshold % 1 == 0
              ? item.minStockThreshold.toInt().toString()
              : item.minStockThreshold.toString())
          : '5',
    );
    _locationController = TextEditingController(text: item?.itemLocation ?? '');

    if (item != null) {
      _selectedUnit = item.unit.isNotEmpty ? item.unit : 'Select Unit';
      _salesTaxType = item.salesPriceIncludesTax ? 'With Tax' : 'Without Tax';
      _purchaseTaxType =
          item.purchasePriceIncludesTax ? 'With Tax' : 'Without Tax';
      _discountType = item.discountType == 'amount' ? 'Amount' : 'Percentage';

      _selectedTax = _taxRates.firstWhere(
        (t) =>
            (t['name'] == item.taxRateName) ||
            (t['rate'] == item.gstRate && item.isGst == t['isGst']),
        orElse: () => _taxRates.firstWhere((t) => t['name'] == 'GST@18%'),
      );
    } else {
      _selectedTax = _taxRates.firstWhere((t) => t['name'] == 'GST@18%');
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _nameController.dispose();
    _barcodeController.dispose();
    _categoryController.dispose();
    _hsnController.dispose();
    _salesPriceController.dispose();
    _discountController.dispose();
    _wholesalePriceController.dispose();
    _purchasePriceController.dispose();
    _openingStockController.dispose();
    _asOfDateController.dispose();
    _atPriceUnitController.dispose();
    _minStockController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  void _generateBarcode() {
    final generated =
        'ITM-${DateTime.now().millisecondsSinceEpoch.toString().substring(6)}';
    setState(() => _barcodeController.text = generated);
  }

  /// Opens the ML Kit camera scanner and fills the barcode field on success.
  Future<void> _scanBarcode() async {
    final code = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (_) => const BarcodeScannerScreen(title: 'Scan Item Code'),
      ),
    );
    if (code != null && code.trim().isNotEmpty && mounted) {
      setState(() => _barcodeController.text = code.trim());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Barcode "$code" added'),
          duration: const Duration(seconds: 2),
          backgroundColor: AppColors.success,
        ),
      );
    }
  }

  void _pickUnit() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) {
        final customUnitController = TextEditingController();
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom + 16,
            left: 16,
            right: 16,
            top: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Select Unit',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: _standardUnits.map((unit) {
                  final isSelected = _selectedUnit == unit;
                  return ChoiceChip(
                    label: Text(unit),
                    selected: isSelected,
                    selectedColor: AppColors.primary.withValues(alpha: 0.15),
                    onSelected: (selected) {
                      if (selected) {
                        setState(() => _selectedUnit = unit);
                        Navigator.pop(ctx);
                      }
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: customUnitController,
                      decoration: const InputDecoration(
                        hintText: 'Custom unit (e.g. Bundle)',
                        isDense: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      final val = customUnitController.text.trim();
                      if (val.isNotEmpty) {
                        setState(() => _selectedUnit = val);
                        Navigator.pop(ctx);
                      }
                    },
                    child: const Text('Add'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _pickCategory() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) {
        final customCatController = TextEditingController();
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom + 16,
            left: 16,
            right: 16,
            top: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Select Category',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 220),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _standardCategories.length,
                  itemBuilder: (context, index) {
                    final cat = _standardCategories[index];
                    return ListTile(
                      dense: true,
                      title: Text(cat),
                      trailing: _categoryController.text == cat
                          ? const Icon(Icons.check, color: AppColors.primary)
                          : null,
                      onTap: () {
                        setState(() => _categoryController.text = cat);
                        Navigator.pop(ctx);
                      },
                    );
                  },
                ),
              ),
              const Divider(),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: customCatController,
                      decoration: const InputDecoration(
                        hintText: 'Add new category',
                        isDense: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      final val = customCatController.text.trim();
                      if (val.isNotEmpty) {
                        setState(() => _categoryController.text = val);
                        Navigator.pop(ctx);
                      }
                    },
                    child: const Text('Add'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        _asOfDateController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  String? _validateAllFields() {
    if (_nameController.text.trim().isEmpty) {
      return 'Item name is required';
    }
    
    final salesPrice = double.tryParse(_salesPriceController.text);
    if (salesPrice == null || !salesPrice.isFinite || salesPrice < 0) {
      return 'Enter a valid sale price';
    }
    final purchasePrice = double.tryParse(_purchasePriceController.text);
    if (purchasePrice == null || !purchasePrice.isFinite || purchasePrice < 0) {
      return 'Enter a valid purchase price';
    }
    if (_discountController.text.isNotEmpty) {
      final discount = double.tryParse(_discountController.text);
      if (discount == null || !discount.isFinite || discount < 0) {
        return 'Enter a valid discount';
      }
    }
    if (_showWholesaleField && _wholesalePriceController.text.isNotEmpty) {
      final wp = double.tryParse(_wholesalePriceController.text);
      if (wp == null || !wp.isFinite || wp < 0) {
        return 'Enter a valid wholesale price';
      }
    }

    if (_openingStockController.text.isNotEmpty) {
      final stock = double.tryParse(_openingStockController.text);
      if (stock == null || !stock.isFinite || stock < 0) {
        return 'Enter a valid opening stock';
      }
    }
    if (_atPriceUnitController.text.isNotEmpty) {
      final atPrice = double.tryParse(_atPriceUnitController.text);
      if (atPrice == null || !atPrice.isFinite || atPrice < 0) {
        return 'Enter a valid at price/unit';
      }
    }
    if (_minStockController.text.isNotEmpty) {
      final minStock = double.tryParse(_minStockController.text);
      if (minStock == null || !minStock.isFinite || minStock < 0) {
        return 'Enter a valid min stock quantity';
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

  Future<void> _saveItem() async {
    final error = _validateAllFields();
    if (error != null) {
      _showValidationError(error);
      return;
    }

    final name = _nameController.text.trim();
      final salesPrice = double.tryParse(_salesPriceController.text) ?? 0.0;
      final purchasePrice =
          double.tryParse(_purchasePriceController.text) ?? 0.0;
      final wholesalePrice = _showWholesaleField
          ? (double.tryParse(_wholesalePriceController.text) ?? 0.0)
          : 0.0;
      final discount = double.tryParse(_discountController.text) ?? 0.0;
      final stockQuantity =
          double.tryParse(_openingStockController.text) ?? 0.0;
      final atPrice = double.tryParse(_atPriceUnitController.text) ?? 0.0;
      final minStock = double.tryParse(_minStockController.text) ?? 5.0;
      final barcode = _barcodeController.text.trim().isEmpty
          ? null
          : _barcodeController.text.trim();

      // Barcodes are globally unique (the index no longer uses `replace: true`,
      // so a clash raises instead of silently erasing the other product). Check
      // up front and tell the user before anything is written.
      if (barcode != null) {
        final barcodeInUse = await ref
            .read(inventoryRepositoryProvider)
            .isBarcodeTaken(barcode,
                excludeId: isEditing ? widget.itemToEdit!.id : null);
        if (barcodeInUse) {
          if (!mounted) return;
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text(
                  'Barcode "$barcode" is already used by another product.'),
              backgroundColor: AppColors.danger,
            ));
          return;
        }
      }

      final category = _categoryController.text.trim().isEmpty
          ? null
          : _categoryController.text.trim();
      final hsnCode = _hsnController.text.trim().isEmpty
          ? null
          : _hsnController.text.trim();
      final location = _locationController.text.trim().isEmpty
          ? null
          : _locationController.text.trim();
      final unitToSave = _selectedUnit == 'Select Unit' ? 'Pcs' : _selectedUnit;
      final gstRate = (_selectedTax['rate'] as num).toDouble();
      final isGst = _selectedTax['isGst'] as bool;
      final taxRateName = _selectedTax['name'] as String;

      if (isEditing) {
        final item = widget.itemToEdit!
          ..name = name
          ..salesPrice = salesPrice
          ..salesPriceIncludesTax = (_salesTaxType == 'With Tax')
          ..wholesalePrice = wholesalePrice
          ..purchasePrice = purchasePrice
          ..purchasePriceIncludesTax = (_purchaseTaxType == 'With Tax')
          ..discountAmount = discount
          ..discountType = _discountType.toLowerCase()
          ..stockQuantity = stockQuantity
          ..atPricePerUnit = atPrice
          ..asOfDate = _selectedDate
          ..minStockThreshold = minStock
          ..barcode = barcode
          ..category = category
          ..hsnCode = hsnCode
          ..itemLocation = location
          ..unit = unitToSave
          ..isGst = isGst
          ..gstRate = gstRate
          ..taxRateName = taxRateName;

        final saved = await ref.read(inventoryProvider.notifier).updateItem(item);
        if (!mounted) return;
        if (!saved) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(const SnackBar(
              content: Text('Could not save the product. Please try again.'),
              backgroundColor: AppColors.danger,
            ));
          return;
        }
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Product updated successfully!')),
        );
      } else {
        final newItem = Item()
          ..name = name
          ..salesPrice = salesPrice
          ..salesPriceIncludesTax = (_salesTaxType == 'With Tax')
          ..wholesalePrice = wholesalePrice
          ..purchasePrice = purchasePrice
          ..purchasePriceIncludesTax = (_purchaseTaxType == 'With Tax')
          ..discountAmount = discount
          ..discountType = _discountType.toLowerCase()
          ..stockQuantity = stockQuantity
          ..atPricePerUnit = atPrice
          ..asOfDate = _selectedDate
          ..minStockThreshold = minStock
          ..barcode = barcode
          ..category = category
          ..hsnCode = hsnCode
          ..itemLocation = location
          ..unit = unitToSave
          ..isGst = isGst
          ..gstRate = gstRate
          ..taxRateName = taxRateName;

        final saved = await ref.read(inventoryProvider.notifier).addItem(newItem);
        if (!mounted) return;
        if (!saved) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(const SnackBar(
              content: Text('Could not save the product. Please try again.'),
              backgroundColor: AppColors.danger,
            ));
          return;
        }
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Product added successfully!')),
        );
      }

      Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          isEditing ? 'Edit Item' : 'Add Item',
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.document_scanner_outlined,
                color: AppColors.primary),
            tooltip: 'Add Photo / Scan Barcode',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Barcode scanner & camera ready'),
                    duration: Duration(seconds: 1)),
              );
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
            Expanded(
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverToBoxAdapter(
                    child: Container(
                      color: AppColors.surface,
                      padding: const EdgeInsets.only(top: 8),
                      child: AddItemTopSection(
                        nameController: _nameController,
                        barcodeController: _barcodeController,
                        categoryController: _categoryController,
                        hsnController: _hsnController,
                        selectedUnit: _selectedUnit,
                        onPickUnit: _pickUnit,
                        onGenerateBarcode: _generateBarcode,
                        onScanBarcode: _scanBarcode,
                        onPickCategory: _pickCategory,
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: SliverTabBarDelegate(
                      TabBar(
                        controller: _tabController,
                        indicatorColor: AppColors.primary,
                        indicatorWeight: 3.0,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: AppColors.primary,
                        labelStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        unselectedLabelColor: AppColors.textSecondary,
                        tabs: const [Tab(text: 'Pricing'), Tab(text: 'Stock')],
                      ),
                    ),
                  ),
                ],
                body: TabBarView(
                  controller: _tabController,
                  children: [
                    AddItemPricingTab(
                      salesPriceController: _salesPriceController,
                      discountController: _discountController,
                      wholesalePriceController: _wholesalePriceController,
                      purchasePriceController: _purchasePriceController,
                      salesTaxType: _salesTaxType,
                      discountType: _discountType,
                      purchaseTaxType: _purchaseTaxType,
                      showWholesaleField: _showWholesaleField,
                      selectedTax: _selectedTax,
                      taxRates: _taxRates,
                      onSalesTaxTypeChanged: (v) =>
                          setState(() => _salesTaxType = v),
                      onDiscountTypeChanged: (v) =>
                          setState(() => _discountType = v),
                      onPurchaseTaxTypeChanged: (v) =>
                          setState(() => _purchaseTaxType = v),
                      onToggleWholesale: () => setState(
                          () => _showWholesaleField = !_showWholesaleField),
                      onTaxChanged: (v) => setState(() => _selectedTax = v),
                    ),
                    AddItemStockTab(
                      openingStockController: _openingStockController,
                      asOfDateController: _asOfDateController,
                      atPriceUnitController: _atPriceUnitController,
                      minStockController: _minStockController,
                      locationController: _locationController,
                      onPickDate: _pickDate,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.surface,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.06),
                    blurRadius: 8,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: _saveItem,
                    child: Text(
                      isEditing ? 'Update' : 'Save',
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
);
  }
}
