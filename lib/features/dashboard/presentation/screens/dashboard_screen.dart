import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/responsive_scaffold.dart';
import '../../../inventory/presentation/providers/inventory_provider.dart';
import '../../../khata/presentation/providers/party_provider.dart';
import '../../../../core/services/settings_service.dart';
import '../providers/dashboard_provider.dart';

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
                  'Sales & product insights',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryDark,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'A quick view of your recent revenue and best-performing products.',
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 16),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final isDesktop = constraints.maxWidth > 800;

                    final lineChart = _buildChartCard(
                      title: 'Sales trend',
                      subtitle: 'Revenue over the last 14 days',
                      icon: Icons.show_chart_rounded,
                      color: AppColors.primary,
                      child: SizedBox(
                        height: 250,
                        child: salesOverTimeAsync.when(
                          data: (data) => data.isEmpty
                              ? _buildEmptyChart(
                                  icon: Icons.auto_graph_rounded,
                                  title: 'No sales data yet',
                                  message:
                                      'Record an invoice to start seeing your daily trend.',
                                )
                              : SalesLineChart(
                                  salesData: data,
                                  currencySymbol: cur,
                                ),
                          loading: () => _buildChartLoading(),
                          error: (_, __) => _buildEmptyChart(
                            icon: Icons.cloud_off_rounded,
                            title: 'Sales trend unavailable',
                            message: 'We could not load the latest sales data.',
                          ),
                        ),
                      ),
                    );

                    final pieChart = _buildChartCard(
                      title: 'Top products',
                      subtitle: 'Revenue contribution by product',
                      icon: Icons.donut_large_rounded,
                      color: AppColors.accent,
                      child: SizedBox(
                        height: 250,
                        child: topProductsAsync.when(
                          data: (data) => data.isEmpty
                              ? _buildEmptyChart(
                                  icon: Icons.inventory_2_outlined,
                                  title: 'No product data yet',
                                  message:
                                      'Complete a sale to see product performance here.',
                                )
                              : ProductPieChart(
                                  productsData: data,
                                  currencySymbol: cur,
                                ),
                          loading: () => _buildChartLoading(),
                          error: (_, __) => _buildEmptyChart(
                            icon: Icons.cloud_off_rounded,
                            title: 'Product insights unavailable',
                            message: 'We could not load product performance.',
                          ),
                        ),
                      ),
                    );

                    if (isDesktop) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: lineChart,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            flex: 2,
                            child: pieChart,
                          ),
                        ],
                      );
                    }

                    return Column(
                      children: [
                        lineChart,
                        const SizedBox(height: 16),
                        pieChart,
                      ],
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
                          margin: EdgeInsets.only(
                              bottom: constraints.maxWidth > 800 ? 0 : 8),
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
                                  color: isZero
                                      ? AppColors.danger
                                      : AppColors.warning,
                                ),
                              ),
                              title: Text(item.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                  'Price: $cur${item.salesPrice.toStringAsFixed(2)}'),
                              trailing: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                  color: isZero
                                      ? AppColors.danger
                                      : AppColors.warning,
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
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
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

  Widget _buildChartCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required Widget child,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryDark.withValues(alpha: 0.04),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      padding: const EdgeInsets.fromLTRB(18, 16, 18, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.11),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: color, size: 19),
              ),
              const SizedBox(width: 11),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 11,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }

  Widget _buildChartLoading() {
    return const Center(
      child: SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(strokeWidth: 2.5),
      ),
    );
  }

  Widget _buildEmptyChart({
    required IconData icon,
    required String title,
    required String message,
  }) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 34, color: AppColors.primaryLight),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 12,
                height: 1.35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Sales Line Chart Widget
class SalesLineChart extends StatelessWidget {
  final Map<String, double> salesData;
  final String currencySymbol;

  const SalesLineChart({
    required this.salesData,
    required this.currencySymbol,
    super.key,
  });

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

    final double maxValue =
        spots.map((e) => e.y).reduce((a, b) => a > b ? a : b);
    final double chartMax = maxValue <= 0 ? 1 : maxValue;
    final double topY = chartMax * 1.15;
    const double bottomY = 0;
    const double yAxisSteps = 4.0;
    final double yInterval = topY / yAxisSteps;

    return AspectRatio(
      aspectRatio: 1.7,
      child: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 16),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(
              show: true,
              drawVerticalLine: true,
              horizontalInterval: yInterval,
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
                            '${parts[1]}/${parts[2]}',
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
                  interval: yInterval,
                  getTitlesWidget: (value, meta) {
                    return SideTitleWidget(
                      meta: meta,
                      child: Text(
                        '$currencySymbol${value.toInt()}',
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
                preventCurveOverShooting: true,
                gradient: const LinearGradient(
                  colors: [AppColors.primary, AppColors.info],
                ),
                barWidth: 3.5,
                isStrokeCapRound: true,
                dotData: FlDotData(
                  show: true,
                  getDotPainter: (spot, percent, bar, index) =>
                      FlDotCirclePainter(
                    radius: 3.5,
                    color: AppColors.surface,
                    strokeWidth: 2,
                    strokeColor: AppColors.primary,
                  ),
                ),
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primary.withValues(alpha: 0.22),
                      AppColors.primary.withValues(alpha: 0.01),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ],
            lineTouchData: LineTouchData(
              touchTooltipData: LineTouchTooltipData(
                getTooltipColor: (_) => AppColors.textPrimary,
                tooltipBorderRadius: BorderRadius.circular(10),
                fitInsideHorizontally: true,
                fitInsideVertically: true,
                getTooltipItems: (touchedSpots) {
                  return touchedSpots.map((spot) {
                    final dateIndex = spot.x.round();
                    final date = dateIndex >= 0 && dateIndex < labels.length
                        ? labels[dateIndex]
                        : '';
                    final parts = date.split('-');
                    final formattedDate = parts.length == 3
                        ? '${parts[2]}/${parts[1]}/${parts[0]}'
                        : date;
                    return LineTooltipItem(
                      '$formattedDate\n$currencySymbol${spot.y.toStringAsFixed(2)}',
                      const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    );
                  }).toList();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Product Pie Chart Widget
class ProductPieChart extends StatelessWidget {
  final List<Map<String, dynamic>> productsData;
  final String currencySymbol;

  const ProductPieChart({
    required this.productsData,
    required this.currencySymbol,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (productsData.isEmpty) return const SizedBox.shrink();

    final visibleProducts = productsData
        .where((item) => (item['revenue'] as num).toDouble() > 0)
        .take(6)
        .toList();
    if (visibleProducts.isEmpty) return const SizedBox.shrink();

    final double totalRevenue = visibleProducts.fold(
        0.0, (sum, item) => sum + (item['revenue'] as num).toDouble());

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

    for (int i = 0; i < visibleProducts.length; i++) {
      final double revenue = (visibleProducts[i]['revenue'] as num).toDouble();
      final double percentage =
          totalRevenue > 0 ? (revenue / totalRevenue) * 100 : 0;
      final String name = visibleProducts[i]['name'] as String;
      final String abbreviatedName =
          name.length > 10 ? '${name.substring(0, 8)}...' : name;

      sections.add(
        PieChartSectionData(
          color: colors[i % colors.length],
          value: percentage,
          title:
              '$abbreviatedName\n$currencySymbol${revenue.toStringAsFixed(0)}',
          radius: 66,
          cornerRadius: 4,
          titleStyle: const TextStyle(
            fontSize: 9,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
    }

    return Row(
      children: [
        Expanded(
          flex: 5,
          child: PieChart(
            PieChartData(
              pieTouchData: PieTouchData(),
              borderData: FlBorderData(show: false),
              sectionsSpace: 3,
              centerSpaceRadius: 47,
              centerSpaceColor: AppColors.surface,
              sections: sections,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$currencySymbol${totalRevenue.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textPrimary,
                ),
              ),
              const Text(
                'Total revenue',
                style: TextStyle(
                  fontSize: 11,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 14),
              ...visibleProducts.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                final name = item['name'] as String;
                final revenue = (item['revenue'] as num).toDouble();
                return Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: colors[index % colors.length],
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 7),
                      Expanded(
                        child: Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 11,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '$currencySymbol${revenue.toStringAsFixed(0)}',
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}
