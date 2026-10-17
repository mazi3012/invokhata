import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/schemas/item.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/responsive_scaffold.dart';
import '../../../../core/widgets/barcode_scanner_screen.dart';
import '../../../../core/utils/pdf_preview_screen.dart';
import '../../../../core/services/settings_service.dart';
import '../../../inventory/presentation/providers/inventory_provider.dart';
import '../../../inventory/presentation/screens/add_item_screen.dart';
import '../providers/cart_provider.dart';
import '../../../khata/presentation/providers/party_provider.dart';
import '../../../../core/utils/india_gst.dart';
import '../../data/pos_repository.dart';

class POSScreen extends ConsumerStatefulWidget {
  const POSScreen({super.key});

  @override
  ConsumerState<POSScreen> createState() => _POSScreenState();
}

class _POSScreenState extends ConsumerState<POSScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _selectedCategory = 'All';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  /// Opens the ML Kit camera scanner, finds the scanned barcode in inventory
  /// and adds the matching item straight to the cart. Unknown codes offer to
  /// create the item right away (with the barcode pre-filled).
  Future<void> _scanAndAdd() async {
    final code = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (_) => const BarcodeScannerScreen(title: 'Scan Product'),
      ),
    );
    if (code == null || code.trim().isEmpty || !mounted) return;
    final normalized = code.trim();

    final items = ref.read(inventoryProvider).asData?.value ?? const <Item>[];
    Item? match;
    for (final item in items) {
      if (item.barcode != null &&
          item.barcode!.trim().isNotEmpty &&
          item.barcode!.trim() == normalized) {
        match = item;
        break;
      }
    }

    if (match != null) {
      ref.read(cartProvider.notifier).addItem(match);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Added "${match.name}" to cart',
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: AppColors.success,
          duration: const Duration(seconds: 2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Barcode $normalized not found in inventory'),
          backgroundColor: AppColors.danger,
          duration: const Duration(seconds: 4),
          action: SnackBarAction(
            label: 'ADD ITEM',
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AddItemScreen(initialBarcode: normalized),
                ),
              );
            },
          ),
        ),
      );
    }
  }

  void _showCheckoutDialog(
      BuildContext context, WidgetRef ref, CartState cart, String currency) {
    final paidController =
        TextEditingController(text: cart.grandTotal.toStringAsFixed(2));
    final isWalkIn = cart.selectedParty == null;

    showDialog(
      context: context,
      builder: (ctx) {
        // Guards against duplicate submits while the checkout is writing.
        var isCheckingOut = false;
        return StatefulBuilder(
          builder: (dialogCtx, setDialogState) => AlertDialog(
        title: const Text('Complete Checkout'),
        content: SizedBox(
          width: 450,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Items in this Bill:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textSecondary)),
              const SizedBox(height: 8),
              Container(
                height: 140,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: cart.items.length,
                  itemBuilder: (context, index) {
                    final ci = cart.items[index];
                    return ListTile(
                      dense: true,
                      title: Text(ci.item.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(
                          '${ci.quantity} x $currency${ci.customUnitPrice.toStringAsFixed(2)}'),
                      trailing: Text(
                          '$currency${ci.totalTaxable.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Subtotal:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('$currency${cart.subtotal.toStringAsFixed(2)}',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cart.isInterState ? 'IGST:' : 'CGST + SGST:',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text('$currency${cart.totalGst.toStringAsFixed(2)}',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              if (cart.discountAmount > 0) ...[
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Discount:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.success)),
                    Text('-$currency${cart.discountAmount.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.success)),
                  ],
                ),
              ],
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Grand Total:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('$currency${cart.grandTotal.toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary)),
                ],
              ),
              const SizedBox(height: 12),
              TextField(
                controller: paidController,
                decoration: InputDecoration(
                    labelText: 'Amount Paid ($currency)',
                    border: const OutlineInputBorder(),
                    hintText: isWalkIn
                        ? 'Walk-in customers must pay full amount'
                        : null),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              if (isWalkIn)
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Walk-in customers must pay the full amount (no partial payments).',
                    style: TextStyle(
                        color: AppColors.danger, fontWeight: FontWeight.bold),
                  ),
                ),
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: isCheckingOut
                  ? null
                  : () => Navigator.pop(dialogCtx),
              child: const Text('Cancel')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white),
            onPressed: isCheckingOut
                ? null
                : () async {
                    // Validate the paid amount is a real, non-negative number.
                    final paid = double.tryParse(paidController.text.trim());
                    if (paid == null || !paid.isFinite || paid < 0) {
                      if (dialogCtx.mounted) {
                        ScaffoldMessenger.of(dialogCtx).showSnackBar(
                          const SnackBar(
                            content: Text('Enter a valid paid amount'),
                            backgroundColor: AppColors.danger,
                          ),
                        );
                      }
                      return;
                    }

                    // Validate walk-in customer payment
                    if (isWalkIn && paid < cart.grandTotal - 0.01) {
                      if (dialogCtx.mounted) {
                        ScaffoldMessenger.of(dialogCtx).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'Walk-in customers must pay the full amount'),
                            backgroundColor: AppColors.danger,
                          ),
                        );
                      }
                      return;
                    }

                    // Disable the button while the checkout is awaiting so a
                    // double-tap cannot create two invoices for one cart.
                    setDialogState(() => isCheckingOut = true);

                    CheckoutResult? result;
                    try {
                      result =
                          await ref.read(cartProvider.notifier).checkout(paid);
                    } catch (e) {
                      setDialogState(() => isCheckingOut = false);
                      if (dialogCtx.mounted) {
                        ScaffoldMessenger.of(dialogCtx).showSnackBar(
                          SnackBar(
                            content: Text(e is InsufficientStockException
                                ? e.toString()
                                : 'Checkout failed. Please try again.'),
                            backgroundColor: AppColors.danger,
                          ),
                        );
                      }
                      return;
                    }

                    ref.invalidate(inventoryProvider);
                    ref.invalidate(partyProvider);

                    if (!dialogCtx.mounted) return;
                    Navigator.pop(dialogCtx);

              if (result is CheckoutSuccess) {
                final invoice = result.invoice;
                if (!context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Invoice Generated & Stock Updated!'),
                    action: SnackBarAction(
                      label: 'VIEW RECEIPT',
                      textColor: Colors.white,
                      backgroundColor: AppColors.primary,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  PdfPreviewScreen(invoice: invoice)),
                        );
                      },
                    ),
                    duration: const Duration(seconds: 6),
                  ),
                );
              } else if (result is CheckoutWalkInPartialPaymentError) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                          'Walk-in customers must pay full amount. No partial payments allowed.'),
                      backgroundColor: AppColors.danger,
                    ),
                  );
                }
              } else if (result is CheckoutMalformedInputError) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                          'Invalid paid amount entered.'),
                      backgroundColor: AppColors.danger,
                    ),
                  );
                }
              } else {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                          'Checkout was cancelled. Please try again.'),
                      backgroundColor: AppColors.danger,
                    ),
                  );
                }
              }
            },
            child: isCheckingOut
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Text('Confirm & Print'),
          ),
        ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final inventoryState = ref.watch(inventoryProvider);
    final cart = ref.watch(cartProvider);
    final partyState = ref.watch(partyProvider);
    final settings = ref.watch(settingsProvider);
    final cur = settings.currencySymbol;
    final isDesktop = MediaQuery.sizeOf(context).width >= 900;

    return DefaultTabController(
      length: 2,
      child: ResponsiveScaffold(
        currentIndex: 1,
        title: 'POS Billing',
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        bottom: isDesktop ? null : TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicatorColor: Colors.white,
          tabs: [
            const Tab(icon: Icon(Icons.storefront), text: 'Catalog'),
            Tab(
              icon: Badge(
                label: Text('${cart.items.length}'),
                isLabelVisible: cart.items.isNotEmpty,
                child: const Icon(Icons.shopping_cart),
              ),
              text: 'Cart',
            ),
          ],
        ),
        actions: [
          if (cart.items.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_sweep),
              onPressed: () => ref.read(cartProvider.notifier).clearCart(),
            ),
        ],
        body: Builder(
          builder: (context) {
            final catalogWidget = inventoryState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, _) => Center(child: Text('Error: $err')),
              data: (items) {
                if (items.isEmpty) {
                  return const Center(
                      child: Text('No items in inventory. Add items first.'));
                }
                final categories = <String>{};
                for (final item in items) {
                  final cat = item.category;
                  if (cat != null && cat.trim().isNotEmpty) {
                    categories.add(cat.trim());
                  }
                }
                final categoryList = ['All', ...categories.toList()..sort()];
                final query = _searchController.text.trim().toLowerCase();
                final filteredItems = items.where((item) {
                  final matchesCategory = _selectedCategory == 'All' ||
                      item.category?.trim() == _selectedCategory;
                  if (!matchesCategory) return false;
                  if (query.isEmpty) return true;
                  return item.name.toLowerCase().contains(query) ||
                      (item.barcode ?? '').toLowerCase().contains(query) ||
                      (item.hsnCode ?? '').toLowerCase().contains(query) ||
                      (item.category ?? '').toLowerCase().contains(query);
                }).toList();

                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 10, 12, 4),
                      child: TextField(
                        controller: _searchController,
                        onChanged: (_) => setState(() {}),
                        decoration: InputDecoration(
                          hintText: 'Search product, barcode, HSN...',
                          prefixIcon: const Icon(Icons.search, size: 20),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (_searchController.text.isNotEmpty)
                                IconButton(
                                  tooltip: 'Clear search',
                                  icon: const Icon(Icons.clear, size: 18),
                                  onPressed: () {
                                    _searchController.clear();
                                    setState(() {});
                                  },
                                ),
                              IconButton(
                                tooltip: 'Scan barcode with camera',
                                icon: const Icon(Icons.qr_code_scanner,
                                    size: 20, color: AppColors.primary),
                                onPressed: _scanAndAdd,
                              ),
                            ],
                          ),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    SizedBox(
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        children: [
                          for (final cat in categoryList)
                            Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: ChoiceChip(
                                label: Text(cat,
                                    style: const TextStyle(fontSize: 12)),
                                selected: _selectedCategory == cat,
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                onSelected: (_) =>
                                    setState(() => _selectedCategory = cat),
                              ),
                            ),
                          const SizedBox(width: 12),
                        ],
                      ),
                    ),
                    Expanded(
                      child: filteredItems.isEmpty
                          ? const Center(
                              child: Text('No items found',
                                  style: TextStyle(color: Colors.grey)))
                          : GridView.builder(
                              padding: const EdgeInsets.all(12),
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 220,
                                childAspectRatio: 1.35,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                              itemCount: filteredItems.length,
                              itemBuilder: (context, index) {
                                final item = filteredItems[index];
                                final cartIndex = cart.items
                                    .indexWhere((ci) => ci.item.id == item.id);
                                final isInCart = cartIndex != -1;
                                final cartItem =
                                    isInCart ? cart.items[cartIndex] : null;

                                return Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: isInCart
                                        ? AppColors.primaryContainer
                                        : AppColors.surface,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: isInCart
                                          ? AppColors.primary
                                          : AppColors.border,
                                      width: isInCart ? 2 : 1,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              item.name,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          if (isInCart)
                                            const CircleAvatar(
                                              radius: 10,
                                              backgroundColor:
                                                  AppColors.success,
                                              child: Icon(Icons.check,
                                                  size: 14,
                                                  color: Colors.white),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '$cur${item.salesPrice.toStringAsFixed(2)}',
                                            style: const TextStyle(
                                                color: AppColors.primaryDark,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            'Stock: ${item.stockQuantity}',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: item.stockQuantity > 0
                                                  ? AppColors.textSecondary
                                                  : AppColors.danger,
                                            ),
                                          ),
                                        ],
                                      ),
                                      if (isInCart && cartItem != null)
                                        Container(
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: AppColors.surface,
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                                color: AppColors.primaryLight),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              IconButton(
                                                padding: EdgeInsets.zero,
                                                constraints:
                                                    const BoxConstraints(
                                                        minWidth: 32,
                                                        minHeight: 32),
                                                icon: const Icon(Icons.remove,
                                                    size: 16,
                                                    color:
                                                        AppColors.primaryDark),
                                                onPressed: () => ref
                                                    .read(cartProvider.notifier)
                                                    .updateQuantity(item.id,
                                                        cartItem.quantity - 1),
                                              ),
                                              Text(
                                                '${cartItem.quantity.toInt()}',
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                              IconButton(
                                                padding: EdgeInsets.zero,
                                                constraints:
                                                    const BoxConstraints(
                                                        minWidth: 32,
                                                        minHeight: 32),
                                                icon: const Icon(Icons.add,
                                                    size: 16,
                                                    color:
                                                        AppColors.primaryDark),
                                                onPressed: () => ref
                                                    .read(cartProvider.notifier)
                                                    .updateQuantity(item.id,
                                                        cartItem.quantity + 1),
                                              ),
                                            ],
                                          ),
                                        )
                                      else
                                        SizedBox(
                                          width: double.infinity,
                                          height: 32,
                                          child: ElevatedButton.icon(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  AppColors.primary,
                                              foregroundColor: Colors.white,
                                              padding: EdgeInsets.zero,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                            ),
                                            icon: const Icon(
                                                Icons.add_shopping_cart,
                                                size: 14),
                                            label: const Text('Add',
                                                style: TextStyle(fontSize: 12)),
                                            onPressed: () => ref
                                                .read(cartProvider.notifier)
                                                .addItem(item),
                                          ),
                                        ),
                                    ],
                                  ),
                                );
                              },
                            ),
                    ),
                  ],
                );
              },
            );

            // Tab 2: Cart & Checkout Summary
            final cartWidget = Container(
              color: AppColors.surfaceAlt,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        partyState.when(
                          data: (parties) {
                            return DropdownButtonFormField<dynamic>(
                              isExpanded: true,
                              isDense: true,
                              decoration: const InputDecoration(
                                labelText: 'Select Customer (Khata)',
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                              ),
                              initialValue: cart.selectedParty,
                              items: [
                                const DropdownMenuItem(
                                    value: null,
                                    child: Text('Walk-in Customer')),
                                ...parties.map((p) => DropdownMenuItem(
                                    value: p, child: Text(p.name))),
                              ],
                              onChanged: (val) => ref
                                  .read(cartProvider.notifier)
                                  .selectParty(val),
                            );
                          },
                          loading: () => const SizedBox.shrink(),
                          error: (_, __) => const SizedBox.shrink(),
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          runSpacing: 6,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text('Tax Mode:',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            ...const {
                              'auto': 'Auto GST',
                              'cgst_sgst': 'CGST+SGST',
                              'igst': 'IGST',
                            }.entries.map((e) => ChoiceChip(
                                  label: Text(e.value,
                                      style: const TextStyle(fontSize: 12)),
                                  selected: cart.taxMode == e.key,
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onSelected: (_) => ref
                                      .read(cartProvider.notifier)
                                      .setTaxMode(e.key),
                                )),
                          ],
                        ),
                        if (cart.taxMode == 'igst') ...[
                          const SizedBox(height: 12),
                          DropdownButtonFormField<String>(
                            initialValue: cart.placeOfSupplyState ??
                                settings.businessState,
                            isExpanded: true,
                            isDense: true,
                            decoration: const InputDecoration(
                              labelText: 'IGST Place of Supply',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                            ),
                            items: indiaStates
                                .map((state) => DropdownMenuItem(
                                    value: state, child: Text(state)))
                                .toList(),
                            onChanged: (value) {
                              if (value != null) {
                                ref
                                    .read(cartProvider.notifier)
                                    .setPlaceOfSupplyState(value);
                              }
                            },
                          ),
                        ],
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          runSpacing: 6,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text('Payment:',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            ...PaymentMode.values.map((mode) => ChoiceChip(
                                  label: Text(mode.label,
                                      style: const TextStyle(fontSize: 12)),
                                  selected: cart.paymentModeEnum == mode,
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onSelected: (_) => ref
                                      .read(cartProvider.notifier)
                                      .setPaymentMode(mode),
                                )),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            const Text('Discount:',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            const SizedBox(width: 8),
                            Expanded(
                              child: SegmentedButton<DiscountMode>(
                                segments: const [
                                  ButtonSegment(
                                      value: DiscountMode.percentage,
                                      label: Text('%')),
                                  ButtonSegment(
                                      value: DiscountMode.amount,
                                      label: Text('₹')),
                                ],
                                selected: {cart.discountMode},
                                showSelectedIcon: false,
                                style: const ButtonStyle(
                                    visualDensity: VisualDensity.compact),
                                onSelectionChanged: (selection) => ref
                                    .read(cartProvider.notifier)
                                    .setDiscountMode(selection.first),
                              ),
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                              width: 76,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '0',
                                  border: const OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 4),
                                  suffixText: cart.discountMode ==
                                          DiscountMode.percentage
                                      ? '%'
                                      : cur,
                                ),
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        decimal: true),
                                onChanged: (v) {
                                  final val = double.tryParse(v) ?? 0.0;
                                  if (cart.discountMode ==
                                      DiscountMode.percentage) {
                                    ref
                                        .read(cartProvider.notifier)
                                        .setDiscountPercent(val);
                                  } else {
                                    ref
                                        .read(cartProvider.notifier)
                                        .setDiscount(val);
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  Expanded(
                    child: cart.items.isEmpty
                        ? const Center(
                            child: Text('Cart is empty',
                                style: TextStyle(color: Colors.grey)))
                        : ListView.builder(
                            itemCount: cart.items.length,
                            itemBuilder: (context, index) {
                              final cartItem = cart.items[index];
                              return ListTile(
                                dense: true,
                                visualDensity: VisualDensity.compact,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                title: Text(cartItem.item.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis),
                                subtitle: Text(
                                    '$cur${cartItem.customUnitPrice.toStringAsFixed(2)} x ${cartItem.quantity.toInt()}',
                                    style: const TextStyle(fontSize: 11)),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      visualDensity: VisualDensity.compact,
                                      padding: EdgeInsets.zero,
                                      constraints: const BoxConstraints(
                                          minWidth: 32, minHeight: 32),
                                      icon: const Icon(
                                          Icons.remove_circle_outline,
                                          size: 18),
                                      onPressed: () => ref
                                          .read(cartProvider.notifier)
                                          .updateQuantity(cartItem.item.id,
                                              cartItem.quantity - 1),
                                    ),
                                    Text('${cartItem.quantity.toInt()}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13)),
                                    IconButton(
                                      visualDensity: VisualDensity.compact,
                                      padding: EdgeInsets.zero,
                                      constraints: const BoxConstraints(
                                          minWidth: 32, minHeight: 32),
                                      icon: const Icon(Icons.add_circle_outline,
                                          size: 18),
                                      onPressed: () => ref
                                          .read(cartProvider.notifier)
                                          .updateQuantity(cartItem.item.id,
                                              cartItem.quantity + 1),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                  ),
                  const Divider(height: 1),
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
                    color: AppColors.surface,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Subtotal:',
                                style: TextStyle(fontSize: 13)),
                            Text('$cur${cart.subtotal.toStringAsFixed(2)}',
                                style: const TextStyle(fontSize: 13)),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(cart.isInterState ? 'IGST:' : 'CGST + SGST:',
                                style: const TextStyle(fontSize: 13)),
                            Text('$cur${cart.totalGst.toStringAsFixed(2)}',
                                style: const TextStyle(fontSize: 13)),
                          ],
                        ),
                        const Divider(),
                        if (cart.discountAmount > 0) ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Discount:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.success)),
                              Text(
                                  '-$cur${cart.discountAmount.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.success)),
                            ],
                          ),
                        ],
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Grand Total:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14)),
                            Text('$cur${cart.grandTotal.toStringAsFixed(2)}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppColors.primary)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                            onPressed: cart.items.isEmpty
                                ? null
                                : () => _showCheckoutDialog(
                                    context, ref, cart, cur),
                            child: const Text('Proceed to Checkout',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );

            if (isDesktop) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: catalogWidget),
                  const VerticalDivider(width: 1, thickness: 1),
                  SizedBox(width: 400, child: cartWidget),
                ],
              );
            }
            return TabBarView(children: [catalogWidget, cartWidget]);
          },
        ),
      ),
    );
  }
}
