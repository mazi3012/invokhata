import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/database/schemas/purchase.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/responsive_scaffold.dart';
import '../providers/purchase_provider.dart';
import 'purchase_screen.dart';

class AllPurchasesScreen extends ConsumerWidget {
  const AllPurchasesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final purchasesAsync = ref.watch(purchaseProvider);

    return ResponsiveScaffold(
      currentIndex: 3,
      title: 'Purchases',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PurchaseScreen()),
          );
        },
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.add),
        label: const Text('New Purchase',
            style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      body: purchasesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
        data: (purchases) {
          if (purchases.isEmpty) {
            return _buildEmptyState(context);
          }

          double totalPurchase = 0;
          for (final p in purchases) {
            totalPurchase += p.totalAmount;
          }

          return Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [AppColors.primary, AppColors.primaryDark],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Total Purchases',
                            style: TextStyle(color: Colors.white70, fontSize: 12)),
                        const SizedBox(height: 4),
                        Text('\u20b9${totalPurchase.toStringAsFixed(2)}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 2),
                        Text('${purchases.length} bills',
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 11)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 88),
                      itemCount: purchases.length,
                      itemBuilder: (context, index) {
                        final purchase = purchases[index];
                        return _PurchaseTile(purchase: purchase);
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 88,
            height: 88,
            decoration: BoxDecoration(
              color: AppColors.primaryContainer,
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Icon(Icons.shopping_cart_outlined,
                size: 44, color: AppColors.primary),
          ),
          const SizedBox(height: 16),
          const Text('No purchases yet',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary)),
          const SizedBox(height: 8),
          const Text('Tap New Purchase to record your first purchase bill.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13, color: AppColors.textSecondary)),
        ],
      ),
    );
  }
}

class _PurchaseTile extends StatelessWidget {
  final Purchase purchase;

  const _PurchaseTile({required this.purchase});

  @override
  Widget build(BuildContext context) {
    final total = purchase.totalAmount;
    final date = purchase.purchaseDate;
    final itemCount = purchase.items.length;

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: AppColors.infoContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.shopping_cart_outlined,
                color: AppColors.info, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(purchase.billNumber,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary)),
                const SizedBox(height: 2),
                Text(
                    '${purchase.partyName}  ·  $itemCount item${itemCount == 1 ? '' : 's'}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 12, color: AppColors.textSecondary)),
                const SizedBox(height: 2),
                Text(DateFormat('dd MMM yyyy').format(date),
                    style: const TextStyle(
                        fontSize: 11, color: AppColors.textHint)),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text('\u20b9${total.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary)),
        ],
      ),
    );
  }
}
