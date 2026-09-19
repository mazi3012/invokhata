import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/responsive_scaffold.dart';
import '../../../inventory/presentation/providers/inventory_provider.dart';
import '../../../khata/presentation/providers/party_provider.dart';
import '../../../../core/services/settings_service.dart';
import '../providers/dashboard_provider.dart';
import '../../../pos/presentation/screens/pos_screen.dart';
import '../../../khata/presentation/screens/add_party_screen.dart';
import '../../../inventory/presentation/screens/add_item_screen.dart';
import '../../../purchase/presentation/screens/purchase_screen.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryState = ref.watch(inventoryProvider);
    final partyState = ref.watch(partyProvider);
    final settings = ref.watch(settingsProvider);
    final cur = settings.currencySymbol;

    // Analytics data
    final analyticsAsync = ref.watch(analyticsProvider);
    final salesOverTimeAsync = ref.watch(salesOverTimeProvider);
    final topProductsAsync = ref.watch(topProductsProvider);

    return ResponsiveScaffold(
      currentIndex: 0,
      body: inventoryState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
        data: (items) {
          final lowStockItems = items
              .where((item) => item.stockQuantity <= item.minStockThreshold)
              .toList();
          final totalProducts = items.length;
          final outOfStockCount =
              items.where((item) => item.stockQuantity <= 0).length;
          final totalStockValue = items.fold<double>(
              0, (sum, item) => sum + (item.salesPrice * item.stockQuantity));

          final parties = partyState.asData?.value ?? [];

          // Fixed: Uses outstandingBalance from your Party model
          final totalReceivable = parties.fold<double>(
              0,
              (sum, p) =>
                  sum + (p.outstandingBalance > 0 ? p.outstandingBalance : 0));

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Quick Action Banner
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.primary, AppColors.primaryDark],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withValues(alpha: 0.22),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Quick Actions',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.2,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Create billing, purchase, party & inventory',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 11.5,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.bolt_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final isWide = constraints.maxWidth > 600;
                          final crossCount = isWide ? 4 : 2;
                          const buttonGap = 8.0;

                          final buttons = [
                            _QuickActionButton(
                              icon: Icons.point_of_sale_rounded,
                              label: 'POS Billing',
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const POSScreen()),
                                );
                              },
                            ),
                            _QuickActionButton(
                              icon: Icons.shopping_cart_rounded,
                              label: 'New Purchase',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const PurchaseScreen()),
                                );
                              },
                            ),
                            _QuickActionButton(
                              icon: Icons.person_add_alt_1_rounded,
                              label: '+ Customer',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const AddPartyScreen()),
                                );
                              },
                            ),
                            _QuickActionButton(
                              icon: Icons.add_box_rounded,
                              label: '+ Product',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const AddItemScreen()),
                                );
                              },
                            ),
                          ];

                          // Build responsive rows (2 per row on phone, 4 per row on wide)
                          final rows = <Widget>[];
                          for (var i = 0;
                              i < buttons.length;
                              i += crossCount) {
                            final rowButtons = buttons.sublist(
                                i,
                                (i + crossCount) > buttons.length
                                    ? buttons.length
                                    : i + crossCount);
                            rows.add(Row(
                              children: [
                                for (var j = 0; j < rowButtons.length; j++) ...[
                                  Expanded(child: rowButtons[j]),
                                  if (j != rowButtons.length - 1)
                                    const SizedBox(width: buttonGap),
                                ],
                                if (rowButtons.length < crossCount) ...[
                                  for (var k = rowButtons.length;
                                      k < crossCount;
                                      k++) ...[
                                    const Expanded(child: SizedBox()),
                                    if (k != crossCount - 1)
                                      const SizedBox(width: buttonGap),
                                  ],
                                ],
                              ],
                            ));
                          }

                          return Column(
                            children: [
                              for (var i = 0; i < rows.length; i++) ...[
                                rows[i],
                                if (i != rows.length - 1)
                                  const SizedBox(height: buttonGap),
                              ],
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Analytics Summary Grid
                const Text(
                  'Analytics & Financial Summary',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryDark),
                ),
                const SizedBox(height: 12),
                GridView.count(
                  crossAxisCount: MediaQuery.of(context).size.width > 1200
                      ? 6
                      : MediaQuery.of(context).size.width > 800
                          ? 3
                          : 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: MediaQuery.of(context).size.width > 1200
                      ? 1.15
                      : MediaQuery.of(context).size.width > 800
                          ? 1.4
                          : 1.35,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // Total Sales Card
                    analyticsAsync.when(
                      data: (data) => _buildAnalyticsCard(
                        title: 'Total Sales',
                        value:
                            '$cur${(data['totalSales'] as double).toStringAsFixed(0)}',
                        subtitle: 'Revenue from all invoices',
                        icon: Icons.attach_money,
                        color: AppColors.success,
                      ),
                      loading: () => _buildAnalyticsCard(
                        title: 'Total Sales',
                        value: 'Loading...',
                        subtitle: 'Revenue from all invoices',
                        icon: Icons.attach_money,
                        color: AppColors.success,
                      ),
                      error: (e, _) => _buildAnalyticsCard(
                        title: 'Total Sales',
                        value: 'Error',
                        subtitle: 'Revenue from all invoices',
                        icon: Icons.attach_money,
                        color: AppColors.danger,
                      ),
                    ),
                    // Total Purchase Card
                    analyticsAsync.when(
                      data: (data) => _buildAnalyticsCard(
                        title: 'Total Purchase',
                        value:
                            '$cur${(data['totalPurchase'] as double).toStringAsFixed(0)}',
                        subtitle: 'Spent on purchases',
                        icon: Icons.shopping_cart_outlined,
                        color: AppColors.info,
                      ),
                      loading: () => _buildAnalyticsCard(
                        title: 'Total Purchase',
                        value: 'Loading...',
                        subtitle: 'Spent on purchases',
                        icon: Icons.shopping_cart_outlined,
                        color: AppColors.info,
                      ),
                      error: (e, _) => _buildAnalyticsCard(
                        title: 'Total Purchase',
                        value: 'Error',
                        subtitle: 'Spent on purchases',
                        icon: Icons.shopping_cart_outlined,
                        color: AppColors.danger,
                      ),
                    ),
                    _buildAnalyticsCard(
                      title: 'Total Products',
                      value: '$totalProducts',
                      subtitle: 'Active SKUs',
                      icon: Icons.inventory_2_outlined,
                      color: AppColors.info,
                    ),
                    _buildAnalyticsCard(
                      title: 'Stock Valuation',
                      value: '$cur${totalStockValue.toStringAsFixed(0)}',
                      subtitle: 'Total Retail Value',
                      icon: Icons.account_balance_wallet_outlined,
                      color: AppColors.primary,
                    ),
                    _buildAnalyticsCard(
                      title: 'Low / Out of Stock',
                      value: '${lowStockItems.length}',
                      subtitle: '$outOfStockCount empty items',
                      icon: Icons.warning_amber_rounded,
                      color: lowStockItems.isNotEmpty
                          ? AppColors.danger
                          : AppColors.success,
                    ),
                    _buildAnalyticsCard(
                      title: 'Khata Balance',
                      value: '$cur${totalReceivable.toStringAsFixed(0)}',
                      subtitle: '${parties.length} Customers',
                      icon: Icons.people_outline,
                      color: AppColors.warning,
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Charts Section
                const Text(
                  'Sales Trends & Product Performance',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryDark),
                ),
                const SizedBox(height: 16),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final isDesktop = constraints.maxWidth > 800;

                    final lineChart = SizedBox(
                      height: 280,
                      child: salesOverTimeAsync.when(
                        data: (data) => data.isEmpty
                            ? _buildEmptyChart('No sales data yet')
                            : SalesLineChart(salesData: data),
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        error: (e, _) =>
                            Center(child: Text('Error loading chart: $e')),
                      ),
                    );

                    final pieChart = SizedBox(
                      height: 280,
                      child: topProductsAsync.when(
                        data: (data) => data.isEmpty
                            ? _buildEmptyChart('No product data yet')
                            : ProductPieChart(productsData: data),
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        error: (e, _) =>
                            Center(child: Text('Error loading chart: $e')),
                      ),
                    );

                    if (isDesktop) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.surface,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(color: AppColors.border),
                              ),
                              padding: const EdgeInsets.all(16),
                              child: lineChart,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.surface,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(color: AppColors.border),
                              ),
                              padding: const EdgeInsets.all(16),
                              child: pieChart,
                            ),
                          ),
                        ],
                      );
                    }

                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: AppColors.border),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          lineChart,
                          const SizedBox(height: 24),
                          pieChart,
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 24),

                // Low Stock Alerts Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Low Stock & Reorder Alerts',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryDark),
                    ),
                    if (outOfStockCount > 0)
                      Chip(
                        label: Text('$outOfStockCount Out of Stock'),
                        backgroundColor: AppColors.dangerContainer,
                        labelStyle: const TextStyle(
                            color: AppColors.danger,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                  ],
                ),
                const SizedBox(height: 12),

                if (lowStockItems.isEmpty)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.successContainer,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.success),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.check_circle, color: AppColors.success),
                        SizedBox(width: 12),
                        Text('All items are sufficiently stocked!',
                            style: TextStyle(
                                color: AppColors.success,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                else
                  LayoutBuilder(
                    builder: (context, constraints) {
                      Widget buildItem(int index) {
                        final item = lowStockItems[index];
                        final isZero = item.stockQuantity <= 0;

                        return Card(
                          margin: EdgeInsets.only(bottom: constraints.maxWidth > 800 ? 0 : 8),
                          child: Center(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: isZero
                                    ? AppColors.dangerContainer
                                    : AppColors.warningContainer,
                                child: Icon(
                                  isZero
                                      ? Icons.error_outline
                                      : Icons.warning_amber,
                                  color:
                                      isZero ? AppColors.danger : AppColors.warning,
                                ),
                              ),
                              title: Text(item.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      const TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                  'Price: $cur${item.salesPrice.toStringAsFixed(2)}'),
                              trailing: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                  color:
                                      isZero ? AppColors.danger : AppColors.warning,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  isZero
                                      ? 'OUT OF STOCK'
                                      : 'Stock: ${item.stockQuantity.toInt()}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        );
                      }

                      if (constraints.maxWidth > 800) {
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 500,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            mainAxisExtent: 76,
                          ),
                          itemCount: lowStockItems.length,
                          itemBuilder: (context, index) => buildItem(index),
                        );
                      }

                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: lowStockItems.length,
                        itemBuilder: (context, index) => buildItem(index),
                      );
                    },
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildAnalyticsCard({
    required String title,
    required String value,
    required String subtitle,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(icon, color: color, size: 20),
            ],
          ),
          Text(
            value,
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: color),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            subtitle,
            style: const TextStyle(color: AppColors.textHint, fontSize: 10),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyChart(String message) {
    return Center(
      child: Text(
        message,
        style: const TextStyle(color: AppColors.textHint),
      ),
    );
  }
}

// Sales Line Chart Widget
class SalesLineChart extends StatelessWidget {
  final Map<String, double> salesData;

  const SalesLineChart({required this.salesData, super.key});

  @override
  Widget build(BuildContext context) {
    if (salesData.isEmpty) return const SizedBox.shrink();

    final List<FlSpot> spots = [];
    final List<String> labels = [];
    int index = 0;

    salesData.forEach((date, amount) {
      spots.add(FlSpot(index.toDouble(), amount));
      labels.add(date);
      index++;
    });

    final double maxY = spots.map((e) => e.y).reduce((a, b) => a > b ? a : b);
    final double minY = spots.map((e) => e.y).reduce((a, b) => a < b ? a : b);
    final double padding = (maxY - minY) * 0.1;
    final double topY = maxY + padding;
    final double bottomY = (minY - padding).clamp(0.0, double.infinity);

    return AspectRatio(
      aspectRatio: 1.7,
      child: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 16),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(
              show: true,
              drawVerticalLine: true,
              horizontalInterval: (topY - bottomY) / 5,
              verticalInterval: 1,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: AppColors.border.withValues(alpha: 0.5),
                  strokeWidth: 1,
                );
              },
              getDrawingVerticalLine: (value) {
                return FlLine(
                  color: AppColors.border.withValues(alpha: 0.5),
                  strokeWidth: 1,
                );
              },
            ),
            titlesData: FlTitlesData(
              show: true,
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    final int index = value.toInt();
                    if (index >= 0 && index < labels.length) {
                      final String label = labels[index];
                      final parts = label.split('-');
                      if (parts.length == 3) {
                        return SideTitleWidget(
                          meta: meta,
                          child: Text(
                            '${parts[1]}-${parts[2]}',
                            style: const TextStyle(
                              color: AppColors.textHint,
                              fontSize: 10,
                            ),
                          ),
                        );
                      }
                    }
                    return const SizedBox.shrink();
                  },
                  interval: 1,
                  reservedSize: 26,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  interval: (topY - bottomY) / 5,
                  getTitlesWidget: (value, meta) {
                    return SideTitleWidget(
                      meta: meta,
                      child: Text(
                        '₹${value.toInt()}',
                        style: const TextStyle(
                          color: AppColors.textHint,
                          fontSize: 10,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: AppColors.border),
            ),
            minX: 0,
            maxX: (spots.length - 1).toDouble(),
            minY: bottomY,
            maxY: topY,
            lineBarsData: [
              LineChartBarData(
                spots: spots,
                isCurved: true,
                color: AppColors.primary,
                barWidth: 3,
                isStrokeCapRound: true,
                dotData: const FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                  color: AppColors.primary.withValues(alpha: 0.1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Product Pie Chart Widget
class ProductPieChart extends StatelessWidget {
  final List<Map<String, dynamic>> productsData;

  const ProductPieChart({required this.productsData, super.key});

  @override
  Widget build(BuildContext context) {
    if (productsData.isEmpty) return const SizedBox.shrink();

    final double totalRevenue = productsData.fold(
        0.0, (sum, item) => sum + (item['revenue'] as double));

    final List<PieChartSectionData> sections = [];
    final List<Color> colors = [
      AppColors.primary,
      AppColors.success,
      AppColors.warning,
      AppColors.danger,
      AppColors.info,
      AppColors.accent,
      AppColors.primaryDark,
      AppColors.successContainer,
    ];

    for (int i = 0; i < productsData.length && i < 8; i++) {
      final double revenue = productsData[i]['revenue'] as double;
      final double percentage =
          totalRevenue > 0 ? (revenue / totalRevenue) * 100 : 0;
      final String name = productsData[i]['name'] as String;
      final String abbreviatedName =
          name.length > 10 ? '${name.substring(0, 8)}...' : name;

      sections.add(
        PieChartSectionData(
          color: colors[i % colors.length],
          value: percentage,
          title: '$abbreviatedName\n₹${revenue.toStringAsFixed(0)}',
          radius: 60,
          titleStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
    }

    if (productsData.length > 8) {
      final double othersRevenue = productsData
          .skip(8)
          .fold(0.0, (sum, item) => sum + (item['revenue'] as double));
      final double othersPercentage =
          totalRevenue > 0 ? (othersRevenue / totalRevenue) * 100 : 0;

      sections.add(
        PieChartSectionData(
          color: AppColors.textHint,
          value: othersPercentage,
          title: 'Others\n₹${othersRevenue.toStringAsFixed(0)}',
          radius: 60,
          titleStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
    }

    return AspectRatio(
      aspectRatio: 1.3,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              touchCallback: (event, touchResponse) {},
            ),
            borderData: FlBorderData(show: false),
            sectionsSpace: 0,
            centerSpaceRadius: 40,
            sections: sections,
          ),
        ),
      ),
    );
  }
}

class _QuickActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _QuickActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      elevation: 0,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 16, color: AppColors.primaryDarker),
              const SizedBox(width: 4),
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 11.5,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryDarker,
                    letterSpacing: 0.1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
