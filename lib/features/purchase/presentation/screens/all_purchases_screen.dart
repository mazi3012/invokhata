import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/database/schemas/purchase.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_header.dart';
import '../../../../core/widgets/responsive_scaffold.dart';
import '../providers/purchase_provider.dart';
import '../widgets/purchase_detail_view.dart';
import 'purchase_screen.dart';

class AllPurchasesScreen extends ConsumerStatefulWidget {
  const AllPurchasesScreen({super.key});

  @override
  ConsumerState<AllPurchasesScreen> createState() => _AllPurchasesScreenState();
}

class _AllPurchasesScreenState extends ConsumerState<AllPurchasesScreen> {
  final _searchController = TextEditingController();
  String _searchQuery = '';
  int? _selectedPurchaseId;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _selectPurchase(Purchase purchase) {
    setState(() => _selectedPurchaseId = purchase.id);
  }

  void _openNewPurchase() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const PurchaseScreen()),
    );
  }

  void _openMobileDetail(Purchase purchase) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: const AppHeader(
            title: 'Purchase details',
            showBackButton: true,
          ),
          body: PurchaseDetailView(purchase: purchase),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final purchasesAsync = ref.watch(purchaseProvider);

    return ResponsiveScaffold(
      currentIndex: 3,
      title: 'Purchases',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _openNewPurchase,
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.add),
        label: const Text(
          'New Purchase',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: purchasesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => _buildErrorState(error),
        data: (purchases) => _buildWorkspace(purchases),
      ),
    );
  }

  Widget _buildWorkspace(List<Purchase> purchases) {
    if (purchases.isEmpty) return _buildEmptyState();

    final selectedPurchase = _selectedPurchaseFor(purchases);

    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth >= 1000;
        return Padding(
          padding: EdgeInsets.fromLTRB(
            isDesktop ? 24 : 16,
            isDesktop ? 20 : 12,
            isDesktop ? 24 : 16,
            isDesktop ? 24 : 96,
          ),
          child: Column(
            children: [
              _buildOverview(purchases, compact: !isDesktop),
              const SizedBox(height: 16),
              Expanded(
                child: isDesktop
                    ? _buildDesktopWorkspace(purchases, selectedPurchase)
                    : _buildPurchaseListPanel(purchases, desktop: false),
              ),
            ],
          ),
        );
      },
    );
  }

  Purchase _selectedPurchaseFor(List<Purchase> purchases) {
    if (_selectedPurchaseId != null) {
      for (final purchase in purchases) {
        if (purchase.id == _selectedPurchaseId) return purchase;
      }
    }
    return purchases.first;
  }

  Widget _buildDesktopWorkspace(
    List<Purchase> purchases,
    Purchase selectedPurchase,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: 370,
          child: _buildPurchaseListPanel(purchases, desktop: true),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppColors.border),
            ),
            child: PurchaseDetailView(purchase: selectedPurchase),
          ),
        ),
      ],
    );
  }

  Widget _buildPurchaseListPanel(
    List<Purchase> purchases, {
    required bool desktop,
  }) {
    final filteredPurchases = purchases.where(_matchesSearch).toList();
    final selectedId = _selectedPurchaseId ?? purchases.first.id;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Purchase register',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    _CountBadge(count: filteredPurchases.length),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  desktop
                      ? 'Select a bill to inspect its items and totals.'
                      : 'Tap any bill to open its full details.',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _searchController,
                  onChanged: (value) {
                    setState(() => _searchQuery = value.trim().toLowerCase());
                  },
                  decoration: InputDecoration(
                    hintText: 'Search bill or vendor',
                    prefixIcon: const Icon(Icons.search, size: 20),
                    suffixIcon: _searchQuery.isEmpty
                        ? null
                        : IconButton(
                            tooltip: 'Clear search',
                            onPressed: () {
                              _searchController.clear();
                              setState(() => _searchQuery = '');
                            },
                            icon: const Icon(Icons.close, size: 18),
                          ),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: filteredPurchases.isEmpty
                ? _buildNoSearchResults()
                : ListView.separated(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 16),
                    itemCount: filteredPurchases.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final purchase = filteredPurchases[index];
                      final isSelected = desktop && purchase.id == selectedId;
                      return _PurchaseTile(
                        purchase: purchase,
                        selected: isSelected,
                        onTap: () {
                          if (desktop) {
                            _selectPurchase(purchase);
                          } else {
                            _openMobileDetail(purchase);
                          }
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  bool _matchesSearch(Purchase purchase) {
    if (_searchQuery.isEmpty) return true;
    return purchase.billNumber.toLowerCase().contains(_searchQuery) ||
        purchase.partyName.toLowerCase().contains(_searchQuery) ||
        (purchase.partyPhone?.contains(_searchQuery) ?? false);
  }

  Widget _buildOverview(List<Purchase> purchases, {required bool compact}) {
    final total = purchases.fold<double>(
      0,
      (sum, purchase) => sum + purchase.totalAmount,
    );
    final average = total / purchases.length;
    final latestDate = purchases
        .map((purchase) => purchase.purchaseDate)
        .reduce((a, b) => a.isAfter(b) ? a : b);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(compact ? 16 : 20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.primaryDark],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.18),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: compact
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildOverviewHeading(total, purchases.length),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _OverviewStat(
                        label: 'Average bill',
                        value: _formatCurrency(average),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _OverviewStat(
                        label: 'Latest bill',
                        value: DateFormat('dd MMM').format(latestDate),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              children: [
                Expanded(child: _buildOverviewHeading(total, purchases.length)),
                _OverviewStat(
                  label: 'Average bill',
                  value: _formatCurrency(average),
                ),
                const SizedBox(width: 28),
                _OverviewStat(
                  label: 'Latest bill',
                  value: DateFormat('dd MMM yyyy').format(latestDate),
                ),
              ],
            ),
    );
  }

  Widget _buildOverviewHeading(double total, int billCount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'PURCHASE REGISTER',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 11,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          '₹${total.toStringAsFixed(2)}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.4,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '$billCount recorded bill${billCount == 1 ? '' : 's'}',
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.76),
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  String _formatCurrency(double amount) => '₹${amount.toStringAsFixed(2)}';

  Widget _buildNoSearchResults() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off_rounded,
              color: AppColors.textHint,
              size: 34,
            ),
            SizedBox(height: 10),
            Text(
              'No matching purchases',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Try a different bill number or vendor name.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.textSecondary, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                color: AppColors.primaryContainer,
                borderRadius: BorderRadius.circular(26),
              ),
              child: const Icon(
                Icons.shopping_cart_outlined,
                size: 44,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'No purchases yet',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Start your purchase register by recording the first bill.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(Object error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, color: AppColors.danger, size: 40),
            const SizedBox(height: 12),
            const Text(
              'Could not load purchases',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              '$error',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: () =>
                  ref.read(purchaseProvider.notifier).loadPurchases(),
              icon: const Icon(Icons.refresh),
              label: const Text('Try again'),
            ),
          ],
        ),
      ),
    );
  }
}

class _PurchaseTile extends StatelessWidget {
  final Purchase purchase;
  final bool selected;
  final VoidCallback onTap;

  const _PurchaseTile({
    required this.purchase,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final itemCount = purchase.items.length;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: selected ? AppColors.primaryContainer : AppColors.surface,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.border,
              width: selected ? 1.4 : 1,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: selected
                      ? Colors.white.withValues(alpha: 0.76)
                      : AppColors.infoContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: selected ? AppColors.primary : AppColors.info,
                  size: 20,
                ),
              ),
              const SizedBox(width: 11),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      purchase.billNumber,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      purchase.partyName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      '${DateFormat('dd MMM yyyy').format(purchase.purchaseDate)}  ·  '
                      '$itemCount item${itemCount == 1 ? '' : 's'}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 11,
                        color: AppColors.textHint,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '₹${purchase.totalAmount.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Icon(
                    selected ? Icons.radio_button_checked : Icons.chevron_right,
                    size: 16,
                    color: selected ? AppColors.primary : AppColors.textHint,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CountBadge extends StatelessWidget {
  final int count;

  const _CountBadge({required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        '$count',
        style: const TextStyle(
          color: AppColors.primaryDark,
          fontSize: 11,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class _OverviewStat extends StatelessWidget {
  final String label;
  final String value;

  const _OverviewStat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.68),
            fontSize: 11,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
