import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/database/schemas/item.dart';
import '../../../../core/services/settings_service.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/responsive_scaffold.dart';

import '../providers/inventory_provider.dart';
import 'add_item_screen.dart';

class InventoryScreen extends ConsumerStatefulWidget {
  const InventoryScreen({super.key});

  @override
  ConsumerState<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends ConsumerState<InventoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  String? _selectedCategoryFilter;
  bool _onlyLowStockFilter = false;

  final List<String> _customCategories = [];
  final List<String> _customUnits = [];

  static const List<String> _defaultCategories = [
    'General',
    'Grocery',
    'Electronics',
    'Stationery',
    'Clothing & Apparel',
    'Hardware & Tools',
    'Pharmacy & Health',
    'Food & Beverages',
    'Automotive',
    'Services',
  ];

  static const List<Map<String, String>> _defaultUnits = [
    {'code': 'Pcs', 'name': 'Pieces'},
    {'code': 'Box', 'name': 'Boxes'},
    {'code': 'Kg', 'name': 'Kilograms'},
    {'code': 'Gms', 'name': 'Grams'},
    {'code': 'Ltr', 'name': 'Liters'},
    {'code': 'Mtr', 'name': 'Meters'},
    {'code': 'Nos', 'name': 'Numbers'},
    {'code': 'Bag', 'name': 'Bags'},
    {'code': 'Pack', 'name': 'Packs'},
    {'code': 'Bottle', 'name': 'Bottles'},
    {'code': 'Can', 'name': 'Cans'},
    {'code': 'Carton', 'name': 'Cartons'},
    {'code': 'Dozen', 'name': 'Dozens'},
    {'code': 'Pair', 'name': 'Pairs'},
    {'code': 'Set', 'name': 'Sets'},
    {'code': 'Quintal', 'name': 'Quintals'},
    {'code': 'Ton', 'name': 'Tons'},
    {'code': 'Roll', 'name': 'Rolls'},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _showRestockDialog(BuildContext context, Item item) {
    final qtyController = TextEditingController();
    showDialog(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        title: Text('Restock "${item.name}"'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Stock: ${item.stockQuantity.toInt()} ${item.unit}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: qtyController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'Add Quantity',
                hintText: 'e.g. 10 or 50',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.add_circle_outline),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              final addQty = double.tryParse(qtyController.text);
              if (addQty != null && addQty > 0) {
                item.stockQuantity += addQty;
                ref.read(inventoryProvider.notifier).updateItem(item);
                Navigator.pop(dialogCtx);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'Added ${addQty.toInt()} ${item.unit} to ${item.name}!'),
                  ),
                );
              }
            },
            child: const Text('Restock'),
          ),
        ],
      ),
    );
  }

  void _showFilterSheet(List<Item> allItems) {
    final categories = {
      ..._defaultCategories,
      ..._customCategories,
      ...allItems
          .map((e) => e.category ?? '')
          .where((e) => e.trim().isNotEmpty),
    }.toList();

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setModalState) => Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Filter Items',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _selectedCategoryFilter = null;
                        _onlyLowStockFilter = false;
                      });
                      Navigator.pop(ctx);
                    },
                    child: const Text('Reset All'),
                  ),
                ],
              ),
              const Divider(),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Only Low Stock Items',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                subtitle: const Text('Show items below threshold quantity'),
                value: _onlyLowStockFilter,
                activeThumbColor: AppColors.primary,
                onChanged: (val) {
                  setModalState(() => _onlyLowStockFilter = val);
                  setState(() => _onlyLowStockFilter = val);
                },
              ),
              const SizedBox(height: 12),
              const Text(
                'Filter by Category',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: categories.map((cat) {
                  final isSelected = _selectedCategoryFilter == cat;
                  return ChoiceChip(
                    label: Text(cat),
                    selected: isSelected,
                    selectedColor: AppColors.primaryContainer,
                    labelStyle: TextStyle(
                      color: isSelected
                          ? AppColors.primaryDarker
                          : AppColors.textPrimary,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                    onSelected: (selected) {
                      setModalState(() {
                        _selectedCategoryFilter = selected ? cat : null;
                      });
                      setState(() {
                        _selectedCategoryFilter = selected ? cat : null;
                      });
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () => Navigator.pop(ctx),
                  child: const Text('Apply Filter'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAddCategoryDialog() {
    final catController = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Add New Category'),
        content: TextField(
          controller: catController,
          autofocus: true,
          decoration: const InputDecoration(
            labelText: 'Category Name',
            hintText: 'e.g. Footwear, Beverages',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              final val = catController.text.trim();
              if (val.isNotEmpty) {
                setState(() => _customCategories.add(val));
                Navigator.pop(ctx);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Category "$val" added!')),
                );
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _showAddUnitDialog() {
    final unitController = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Add Custom Unit'),
        content: TextField(
          controller: unitController,
          autofocus: true,
          decoration: const InputDecoration(
            labelText: 'Unit Short Code / Name',
            hintText: 'e.g. Bndl, Tube, SqFt',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              final val = unitController.text.trim();
              if (val.isNotEmpty) {
                setState(() => _customUnits.add(val));
                Navigator.pop(ctx);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Unit "$val" added!')),
                );
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _handleFabAction() {
    switch (_tabController.index) {
      case 0:
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const AddItemScreen()),
        );
        break;
      case 2:
        _showAddCategoryDialog();
        break;
      case 3:
        _showAddUnitDialog();
        break;
    }
  }

  String _getFabLabel() {
    switch (_tabController.index) {
      case 1:
        return 'Add Service';
      case 2:
        return 'Add Category';
      case 3:
        return 'Add Unit';
      case 0:
      default:
        return 'Add Product';
    }
  }

  @override
  Widget build(BuildContext context) {
    final inventoryState = ref.watch(inventoryProvider);
    final settings = ref.watch(settingsProvider);
    final cur = settings.currencySymbol;

    return ResponsiveScaffold(
      currentIndex: 5,
      title: 'Items',
      actions: [
        IconButton(
          icon: const Icon(Icons.settings_outlined),
          tooltip: 'Settings',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text('Inventory settings & barcode preferences'),
                  duration: Duration(seconds: 1)),
            );
          },
        ),
        IconButton(
          icon: Icon(
            Icons.filter_alt_outlined,
            color: (_selectedCategoryFilter != null || _onlyLowStockFilter)
                ? Colors.orangeAccent
                : null,
          ),
          tooltip: 'Filter',
          onPressed: () {
            final items = inventoryState.asData?.value ?? [];
            _showFilterSheet(items);
          },
        ),
        PopupMenuButton<String>(
          icon: const Icon(Icons.more_vert),
          onSelected: (val) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Action: $val')),
            );
          },
          itemBuilder: (ctx) => const [
            PopupMenuItem(
                value: 'export', child: Text('Export Items (Excel)')),
            PopupMenuItem(value: 'import', child: Text('Bulk Import Items')),
            PopupMenuItem(
                value: 'bulk_edit', child: Text('Bulk Edit Prices')),
          ],
        ),
        const SizedBox(width: 4),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.surface,
            border: Border(
              bottom: BorderSide(color: AppColors.border, width: 1),
            ),
          ),
          child: TabBar(
            controller: _tabController,
            indicatorColor: AppColors.primary,
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.textSecondary,
            labelStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.8,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.8,
            ),
            tabs: const [
              Tab(text: 'PRODUCTS'),
              Tab(text: 'SERVICES'),
              Tab(text: 'CATEGORIES'),
              Tab(text: 'UNITS'),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        icon: const Icon(Icons.add_circle, size: 20),
        label: Text(
          _getFabLabel(),
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        onPressed: _handleFabAction,
      ),
      body: Column(
        children: [
          // Promotional / Online search sub-banner
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Online product directory & catalog ready'),
                    duration: Duration(seconds: 1)),
              );
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: AppColors.primaryContainer.withValues(alpha: 0.4),
              child: const Row(
                children: [
                  Expanded(
                    child: Text(
                      'Search Products & Sellers Online on InvoKhata',
                      style: TextStyle(
                        color: AppColors.primaryDarker,
                        fontSize: 12.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Icon(Icons.chevron_right,
                      size: 18, color: AppColors.primaryDark),
                ],
              ),
            ),
          ),

          // Prominent search input box
          Container(
            color: AppColors.surface,
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 900),
                child: TextField(
                  controller: _searchController,
                  onChanged: (val) => setState(() => _searchQuery = val.trim()),
                  decoration: InputDecoration(
                    hintText: 'Search Items by Name or Code',
                    hintStyle: const TextStyle(
                      color: AppColors.textHint,
                      fontSize: 14,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.primary,
                      size: 22,
                    ),
                    suffixIcon: _searchQuery.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear, size: 18),
                            onPressed: () {
                              _searchController.clear();
                              setState(() => _searchQuery = '');
                            },
                          )
                        : null,
                    filled: true,
                    fillColor: AppColors.surface,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
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
                      borderSide:
                          const BorderSide(color: AppColors.primary, width: 1.6),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Active filter indicator chip bar if filters applied
          if (_selectedCategoryFilter != null || _onlyLowStockFilter)
            Container(
              color: AppColors.surface,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                children: [
                  const Text('Filters: ',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.bold)),
                  if (_onlyLowStockFilter)
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Chip(
                        labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        label: const Text('Low Stock',
                            style: TextStyle(fontSize: 11)),
                        onDeleted: () =>
                            setState(() => _onlyLowStockFilter = false),
                      ),
                    ),
                  if (_selectedCategoryFilter != null)
                    Chip(
                      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      label: Text(_selectedCategoryFilter!,
                          style: const TextStyle(fontSize: 11)),
                      onDeleted: () =>
                          setState(() => _selectedCategoryFilter = null),
                    ),
                ],
              ),
            ),

          Expanded(
            child: inventoryState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, _) => Center(child: Text('Error: $err')),
              data: (allItems) {
                // Products (Goods)
                final products = allItems.where((item) {
                  final isService =
                      (item.category?.toLowerCase() == 'services' ||
                          item.unit.toLowerCase() == 'hrs' ||
                          item.unit.toLowerCase() == 'service');
                  if (isService) return false;
                  if (_onlyLowStockFilter &&
                      item.stockQuantity > item.minStockThreshold) {
                    return false;
                  }
                  if (_selectedCategoryFilter != null &&
                      item.category != _selectedCategoryFilter) {
                    return false;
                  }
                  if (_searchQuery.isNotEmpty) {
                    final query = _searchQuery.toLowerCase();
                    final name = item.name.toLowerCase();
                    final barcode = (item.barcode ?? '').toLowerCase();
                    final hsn = (item.hsnCode ?? '').toLowerCase();
                    return name.contains(query) ||
                        barcode.contains(query) ||
                        hsn.contains(query);
                  }
                  return true;
                }).toList();

                // Services
                final services = allItems.where((item) {
                  final isService =
                      (item.category?.toLowerCase() == 'services' ||
                          item.unit.toLowerCase() == 'hrs' ||
                          item.unit.toLowerCase() == 'service');
                  if (!isService) return false;
                  if (_searchQuery.isNotEmpty) {
                    final query = _searchQuery.toLowerCase();
                    final name = item.name.toLowerCase();
                    return name.contains(query);
                  }
                  return true;
                }).toList();

                return Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 900),
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        // 1. PRODUCTS TAB
                        _buildProductsTab(products, cur),

                        // 2. SERVICES TAB
                        _buildServicesTab(services, cur),

                        // 3. CATEGORIES TAB
                        _buildCategoriesTab(allItems),

                        // 4. UNITS TAB
                        _buildUnitsTab(allItems),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductsTab(List<Item> products, String cur) {
    if (products.isEmpty) {
      if (_searchQuery.isNotEmpty ||
          _selectedCategoryFilter != null ||
          _onlyLowStockFilter) {
        return const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.search_off, size: 56, color: AppColors.textHint),
              SizedBox(height: 12),
              Text('No matching products found',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary)),
              SizedBox(height: 4),
              Text('Try searching with different terms or reset filters.',
                  style: TextStyle(color: AppColors.textSecondary)),
            ],
          ),
        );
      }
      return const _EmptyBoxIllustration(
        title: 'Hey! You have not added any products yet.',
        subtitle: 'Add your first product here.',
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 88),
      itemCount: products.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final item = products[index];
        final isLowStock = item.stockQuantity <= item.minStockThreshold;

        return Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AddItemScreen(itemToEdit: item),
                ),
              );
            },
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: isLowStock
                          ? AppColors.dangerContainer
                          : AppColors.primaryContainer,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.inventory_2_outlined,
                      color: isLowStock ? AppColors.danger : AppColors.primary,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            if (item.category != null &&
                                item.category!.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(right: 6.0),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: AppColors.surfaceAlt,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    item.category!,
                                    style: const TextStyle(
                                      fontSize: 11,
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                ),
                              ),
                            Text(
                              'Code: ${item.barcode ?? 'N/A'}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Stock: ${item.stockQuantity.toInt()} ${item.unit}',
                          style: TextStyle(
                            fontSize: 12,
                            color: isLowStock
                                ? AppColors.danger
                                : AppColors.textSecondary,
                            fontWeight: isLowStock
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '$cur${item.salesPrice.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.add_shopping_cart,
                                color: AppColors.success, size: 20),
                            tooltip: 'Quick Restock',
                            visualDensity: VisualDensity.compact,
                            onPressed: () => _showRestockDialog(context, item),
                          ),
                          IconButton(
                            icon: const Icon(Icons.edit_outlined,
                                color: AppColors.primary, size: 20),
                            tooltip: 'Edit Product',
                            visualDensity: VisualDensity.compact,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      AddItemScreen(itemToEdit: item),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildServicesTab(List<Item> services, String cur) {
    if (services.isEmpty) {
      return const _EmptyBoxIllustration(
        title: 'Hey! You have not added any services yet.',
        subtitle:
            'Add your first service here (e.g. Labor, Repair, Consulting).',
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 88),
      itemCount: services.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final item = services[index];
        return Card(
          child: ListTile(
            leading: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: AppColors.primaryContainer,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.home_repair_service_outlined,
                color: AppColors.primary,
                size: 24,
              ),
            ),
            title: Text(
              item.name,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.textPrimary),
            ),
            subtitle: Text(
              'SAC: ${item.hsnCode ?? 'N/A'} • Unit: ${item.unit}',
              style:
                  const TextStyle(fontSize: 12, color: AppColors.textSecondary),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '$cur${item.salesPrice.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: AppColors.textPrimary),
                ),
                IconButton(
                  icon:
                      const Icon(Icons.edit_outlined, color: AppColors.primary),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AddItemScreen(itemToEdit: item),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCategoriesTab(List<Item> allItems) {
    final allCats = {
      ..._defaultCategories,
      ..._customCategories,
      ...allItems
          .map((e) => e.category ?? '')
          .where((e) => e.trim().isNotEmpty),
    }.toList();

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 88),
      itemCount: allCats.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final cat = allCats[index];
        final count = allItems
            .where((i) => (i.category ?? '').toLowerCase() == cat.toLowerCase())
            .length;

        return Card(
          child: ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.category_outlined,
                  color: AppColors.primary, size: 20),
            ),
            title: Text(
              cat,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.textPrimary),
            ),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.surfaceAlt,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.border),
              ),
              child: Text(
                '$count Items',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
            onTap: () {
              setState(() {
                _selectedCategoryFilter = cat;
                _tabController.animateTo(0);
              });
            },
          ),
        );
      },
    );
  }

  Widget _buildUnitsTab(List<Item> allItems) {
    final units = [
      ..._defaultUnits,
      ..._customUnits.map((u) => {'code': u, 'name': 'Custom Unit'}),
    ];

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 88),
      itemCount: units.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final u = units[index];
        final code = u['code']!;
        final name = u['name']!;
        final count = allItems
            .where((i) => i.unit.toLowerCase() == code.toLowerCase())
            .length;

        return Card(
          child: ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.straighten_outlined,
                  color: AppColors.primary, size: 20),
            ),
            title: Text(
              code,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.textPrimary),
            ),
            subtitle: Text(
              name,
              style:
                  const TextStyle(fontSize: 12, color: AppColors.textSecondary),
            ),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.surfaceAlt,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.border),
              ),
              child: Text(
                '$count Items',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Cardboard box illustration empty state matching Screenshot 1 exactly
class _EmptyBoxIllustration extends StatelessWidget {
  final String title;
  final String subtitle;

  const _EmptyBoxIllustration({
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              height: 150,
              child: CustomPaint(
                painter: _OpenCardboardBoxPainter(),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

/// Custom painter for the 3D isometric open delivery carton box with scattered particles
class _OpenCardboardBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2 + 10;

    // Palette: Soft pastel blues & greys
    final leftFacePaint = Paint()..color = const Color(0xFFC9E0F8);
    final rightFacePaint = Paint()..color = const Color(0xFF9FC4EB);
    final insideLeftPaint = Paint()..color = const Color(0xFF8BB5E2);
    final insideRightPaint = Paint()..color = const Color(0xFFB5D5F5);
    final flapTopPaint = Paint()..color = const Color(0xFFE2EFFC);
    final flapBackPaint = Paint()..color = const Color(0xFFD0E4FA);
    final shadowPaint = Paint()..color = const Color(0x15000000);

    // Box dimensions
    const w = 42.0;
    const h = 34.0;
    const d = 24.0;

    // Shadow underneath
    final shadowPath = Path()
      ..addOval(Rect.fromCenter(
        center: Offset(cx, cy + h + 8),
        width: 110,
        height: 22,
      ));
    canvas.drawPath(shadowPath, shadowPaint);

    // Confetti / sparkles / dust around the box base
    final confettiPaint1 = Paint()..color = const Color(0xFF4A90D9);
    final confettiPaint2 = Paint()..color = const Color(0xFF90CAF9);
    final confettiPaint3 = Paint()..color = const Color(0xFFB0BEC5);

    // Left specks
    canvas.drawCircle(Offset(cx - 52, cy + 22), 2.5, confettiPaint1);
    canvas.drawRect(
        Rect.fromCenter(center: Offset(cx - 58, cy + 12), width: 8, height: 3),
        confettiPaint3);
    canvas.drawCircle(Offset(cx - 40, cy + 34), 2.0, confettiPaint2);

    // Right specks
    canvas.drawCircle(Offset(cx + 46, cy + 18), 3.0, confettiPaint1);
    canvas.drawCircle(Offset(cx + 56, cy + 30), 2.0, confettiPaint2);
    canvas.drawRect(
        Rect.fromCenter(center: Offset(cx - 10, cy + 42), width: 7, height: 4),
        confettiPaint1);

    // Inside Back Faces (Visible when top flaps are open)
    final insideBackLeft = Path()
      ..moveTo(cx, cy)
      ..lineTo(cx - w, cy - d)
      ..lineTo(cx, cy - d * 2)
      ..lineTo(cx + w, cy - d)
      ..close();
    canvas.drawPath(insideBackLeft, insideLeftPaint);

    final insideBackRight = Path()
      ..moveTo(cx, cy)
      ..lineTo(cx + w, cy - d)
      ..lineTo(cx, cy - d * 2)
      ..close();
    canvas.drawPath(insideBackRight, insideRightPaint);

    // Flap - Top Left Flap (Spread outwards)
    final topLeftFlap = Path()
      ..moveTo(cx - w, cy - d)
      ..lineTo(cx - w - 24, cy - d - 14)
      ..lineTo(cx - 10, cy - d * 2 - 8)
      ..lineTo(cx, cy - d * 2)
      ..close();
    canvas.drawPath(topLeftFlap, flapBackPaint);

    // Flap - Top Right Flap (Spread outwards)
    final topRightFlap = Path()
      ..moveTo(cx + w, cy - d)
      ..lineTo(cx + w + 24, cy - d - 14)
      ..lineTo(cx + 10, cy - d * 2 - 8)
      ..lineTo(cx, cy - d * 2)
      ..close();
    canvas.drawPath(topRightFlap, flapTopPaint);

    // Front Left Face
    final frontLeft = Path()
      ..moveTo(cx, cy)
      ..lineTo(cx - w, cy - d)
      ..lineTo(cx - w, cy - d + h)
      ..lineTo(cx, cy + h)
      ..close();
    canvas.drawPath(frontLeft, leftFacePaint);

    // Front Right Face
    final frontRight = Path()
      ..moveTo(cx, cy)
      ..lineTo(cx + w, cy - d)
      ..lineTo(cx + w, cy - d + h)
      ..lineTo(cx, cy + h)
      ..close();
    canvas.drawPath(frontRight, rightFacePaint);

    // Flap - Front Left Open Flap (hanging forward)
    final frontLeftFlap = Path()
      ..moveTo(cx, cy)
      ..lineTo(cx - w, cy - d)
      ..lineTo(cx - w - 16, cy - 2)
      ..lineTo(cx - 12, cy + 18)
      ..close();
    canvas.drawPath(frontLeftFlap, flapBackPaint);

    // Flap - Front Right Open Flap (hanging forward)
    final frontRightFlap = Path()
      ..moveTo(cx, cy)
      ..lineTo(cx + w, cy - d)
      ..lineTo(cx + w + 16, cy - 2)
      ..lineTo(cx + 12, cy + 18)
      ..close();
    canvas.drawPath(frontRightFlap, flapTopPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
