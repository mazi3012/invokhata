import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/pos/presentation/screens/pos_screen.dart';
import '../../features/pos/presentation/screens/all_invoices_screen.dart';
import '../../features/inventory/presentation/screens/inventory_screen.dart';
import '../../features/khata/presentation/screens/khata_screen.dart';
import '../../features/purchase/presentation/screens/all_purchases_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primary, AppColors.primaryDark],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: DrawerHeader(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.18),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/branding/invokhata_logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'InvoKhata',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          _DrawerTile(
            icon: Icons.dashboard_outlined,
            title: 'Dashboard & Analytics',
            onTap: () => _goTo(context, const DashboardScreen()),
          ),
          _DrawerTile(
            icon: Icons.point_of_sale,
            title: 'POS Billing',
            onTap: () => _goTo(context, const POSScreen()),
          ),
          _DrawerTile(
            icon: Icons.receipt_long_outlined,
            title: 'All Invoices',
            onTap: () => _goTo(context, const AllInvoicesScreen()),
          ),
          _DrawerTile(
            icon: Icons.shopping_cart_outlined,
            title: 'Purchase',
            onTap: () => _goTo(context, const AllPurchasesScreen()),
          ),
          _DrawerTile(
            icon: Icons.inventory_2_outlined,
            title: 'Inventory Management',
            onTap: () => _push(context, const InventoryScreen()),
          ),
          _DrawerTile(
            icon: Icons.people_alt_outlined,
            title: 'Khata / Customers',
            onTap: () => _push(context, const KhataScreen()),
          ),
          const Divider(indent: 16, endIndent: 16),
          _DrawerTile(
            icon: Icons.settings_outlined,
            title: 'Business & App Settings',
            onTap: () => _push(context, const SettingsScreen()),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16, bottom: 24),
            child: Center(
              child: Text(
                'InvoKhata v1.0.0',
                style: TextStyle(color: AppColors.textHint, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void _goTo(BuildContext context, Widget screen) {
    Navigator.pop(context);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static void _push(BuildContext context, Widget screen) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }
}

class _DrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _DrawerTile({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: ListTile(
        leading: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: AppColors.primaryContainer,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: AppColors.primary, size: 20),
        ),
        title: Text(title,
            style: const TextStyle(
                fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onTap: onTap,
      ),
    );
  }
}
