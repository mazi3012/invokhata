import 'package:flutter/material.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/khata/presentation/screens/khata_screen.dart';
import '../../features/pos/presentation/screens/pos_screen.dart';
import '../../features/pos/presentation/screens/all_invoices_screen.dart';
import '../../features/purchase/presentation/screens/all_purchases_screen.dart';

class AppBottomNav extends StatelessWidget {
  final int currentIndex;

  const AppBottomNav({super.key, required this.currentIndex});

  void _onDestinationSelected(BuildContext context, int index) {
    if (index == currentIndex) return;

    final destination = switch (index) {
      0 => const DashboardScreen(),
      1 => const POSScreen(),
      2 => const AllInvoicesScreen(),
      3 => const AllPurchasesScreen(),
      4 => const KhataScreen(),
      _ => const DashboardScreen(),
    };

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => destination),
    );
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: (index) => _onDestinationSelected(context, index),
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.dashboard_outlined),
          selectedIcon: Icon(Icons.dashboard),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.point_of_sale_outlined),
          selectedIcon: Icon(Icons.point_of_sale),
          label: 'POS',
        ),
        NavigationDestination(
          icon: Icon(Icons.receipt_long_outlined),
          selectedIcon: Icon(Icons.receipt_long),
          label: 'Invoices',
        ),
        NavigationDestination(
          icon: Icon(Icons.shopping_cart_outlined),
          selectedIcon: Icon(Icons.shopping_cart),
          label: 'Purchase',
        ),
        NavigationDestination(
          icon: Icon(Icons.people_alt_outlined),
          selectedIcon: Icon(Icons.people_alt),
          label: 'Khata',
        ),
      ],
    );
  }
}
