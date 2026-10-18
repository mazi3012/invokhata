import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import '../../../../core/database/isar_service.dart';
import '../../../../core/database/schemas/invoice.dart';
import '../../../../core/database/schemas/item.dart';
import '../../../../core/database/schemas/party.dart';
import '../../../../core/database/schemas/purchase.dart';

// 1. Controls the active screen globally (Drawer & BottomNav)
final dashboardNavProvider = StateProvider<int>((ref) => 0);

// 2. Analytics Engine
class AnalyticsRepository {
  final Isar _isar = IsarService.isar;

  Future<Map<String, dynamic>> getDashboardStats() async {
    final invoices = await _isar.invoices.where().findAll();
    final items = await _isar.items.where().findAll();
    final parties = await _isar.partys.where().findAll();
    final purchases = await _isar.purchases.where().findAll();

    double totalSales = 0;
    for (var inv in invoices) {
      if (inv.grandTotal.isFinite) {
        totalSales += inv.grandTotal;
      }
    }

    double totalPurchase = 0;
    for (var pur in purchases) {
      if (pur.totalAmount.isFinite) {
        totalPurchase += pur.totalAmount;
      }
    }

    double totalDue = 0;
    for (var party in parties) {
      if (party.outstandingBalance.isFinite && party.outstandingBalance > 0) {
        totalDue += party.outstandingBalance;
      }
    }

    int lowStockCount =
        items.where((i) => i.stockQuantity > 0 && i.stockQuantity <= 5).length;
    int outOfStockCount = items.where((i) => i.stockQuantity <= 0).length;

    return {
      'totalSales': totalSales,
      'totalPurchase': totalPurchase,
      'totalDue': totalDue,
      'invoiceCount': invoices.length,
      'itemCount': items.length,
      'lowStockCount': lowStockCount,
      'outOfStockCount': outOfStockCount,
    };
  }

  /// Returns daily sales grouped by day for the specified month and year.
  /// Format: `{'2026-10-01': 1234.5, ...}` with keys sorted ascending (all days of the month).
  Future<Map<String, double>> getSalesForMonth(int year, int month) async {
    final invoices = await _isar.invoices.where().findAll();
    final lastDay = (month < 12)
        ? DateTime(year, month + 1, 1).subtract(const Duration(days: 1))
        : DateTime(year + 1, 1, 1).subtract(const Duration(days: 1));

    final daily = <String, double>{};
    for (var d = 1; d <= lastDay.day; d++) {
      final date = DateTime(year, month, d);
      daily[_formatDate(date)] = 0.0;
    }

    var hasSales = false;
    for (final inv in invoices) {
      if (inv.invoiceDate.year == year && inv.invoiceDate.month == month) {
        final key = _formatDate(inv.invoiceDate);
        if (daily.containsKey(key) && inv.grandTotal.isFinite && inv.grandTotal > 0) {
          daily[key] = (daily[key] ?? 0) + inv.grandTotal;
          hasSales = true;
        }
      }
    }

    if (!hasSales) return {};

    final sorted = Map<String, double>.fromEntries(
      daily.entries.toList()..sort((a, b) => a.key.compareTo(b.key)),
    );
    return sorted;
  }

  /// Returns top-selling products by total revenue (top 8).
  Future<List<Map<String, dynamic>>> getTopProducts({int limit = 8}) async {
    final invoices = await _isar.invoices.where().findAll();
    final productMap = <String, double>{}; // name -> total revenue
    final qtyMap = <String, double>{}; // name -> total quantity

    for (final inv in invoices) {
      for (final line in inv.items) {
        final name = line.itemName ?? 'Unknown';
        if (line.totalPrice.isFinite) {
          productMap[name] = (productMap[name] ?? 0) + line.totalPrice;
        }
        if (line.quantity.isFinite) {
          qtyMap[name] = (qtyMap[name] ?? 0) + line.quantity;
        }
      }
    }

    final entries = productMap.entries
        .map((e) => {
              'name': e.key,
              'revenue': e.value,
              'quantity': qtyMap[e.key] ?? 0,
            })
        .toList();
    entries.sort(
        (a, b) => (b['revenue'] as double).compareTo(a['revenue'] as double));
    return entries.take(limit).toList();
  }

  String _formatDate(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
}

final lastUpdateProvider = StateProvider<DateTime>((ref) => DateTime.now());

final selectedDashboardMonthProvider = StateProvider<DateTime>((ref) {
  final now = DateTime.now();
  return DateTime(now.year, now.month, 1);
});

final analyticsProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  ref.watch(lastUpdateProvider);
  return AnalyticsRepository().getDashboardStats();
});

final salesOverTimeProvider = FutureProvider<Map<String, double>>((ref) async {
  ref.watch(lastUpdateProvider);
  final selectedMonth = ref.watch(selectedDashboardMonthProvider);
  return AnalyticsRepository().getSalesForMonth(selectedMonth.year, selectedMonth.month);
});

final topProductsProvider =
    FutureProvider<List<Map<String, dynamic>>>((ref) async {
  ref.watch(lastUpdateProvider);
  return AnalyticsRepository().getTopProducts();
});
