import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/pos/presentation/screens/pos_screen.dart';
import '../../features/pos/presentation/screens/all_invoices_screen.dart';
import '../../features/inventory/presentation/screens/inventory_screen.dart';
import '../../features/khata/presentation/screens/khata_screen.dart';
import '../../features/purchase/presentation/screens/all_purchases_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';

class AppSideNav extends StatefulWidget {
  final int currentIndex;
  const AppSideNav({super.key, required this.currentIndex});

  @override
  State<AppSideNav> createState() => _AppSideNavState();
}

class _AppSideNavState extends State<AppSideNav> {
  bool _isExpanded = true;

  void _onDestinationSelected(BuildContext context, int index) {
    if (index == widget.currentIndex) return;
    final destination = switch (index) {
      0 => const DashboardScreen(),
      1 => const POSScreen(),
      2 => const AllInvoicesScreen(),
      3 => const AllPurchasesScreen(),
      4 => const KhataScreen(),
      5 => const InventoryScreen(),
      6 => const SettingsScreen(),
      _ => const DashboardScreen(),
    };
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => destination,
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: _isExpanded ? 260 : 70,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: const Border(right: BorderSide(color: AppColors.border)),
      ),
      child: Column(
        children: [
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                if (_isExpanded) ...[
                  SizedBox(
                    width: 32,
                    height: 32,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/branding/invokhata_logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'InvoKhata',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: AppColors.primary,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.menu_open, color: AppColors.textSecondary, size: 20),
                    onPressed: () => setState(() => _isExpanded = false),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    splashRadius: 18,
                  ),
                ] else ...[
                  Expanded(
                    child: InkWell(
                      onTap: () => setState(() => _isExpanded = true),
                      child: Center(
                        child: SizedBox(
                          width: 32,
                          height: 32,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/branding/invokhata_logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8),
              children: [
                _NavItem(icon: Icons.dashboard_outlined, activeIcon: Icons.dashboard, title: 'Dashboard', isSelected: widget.currentIndex == 0, isExpanded: _isExpanded, onTap: () => _onDestinationSelected(context, 0)),
                _NavItem(icon: Icons.point_of_sale_outlined, activeIcon: Icons.point_of_sale, title: 'POS Billing', isSelected: widget.currentIndex == 1, isExpanded: _isExpanded, onTap: () => _onDestinationSelected(context, 1)),
                _NavItem(icon: Icons.receipt_long_outlined, activeIcon: Icons.receipt_long, title: 'Invoices', isSelected: widget.currentIndex == 2, isExpanded: _isExpanded, onTap: () => _onDestinationSelected(context, 2)),
                _NavItem(icon: Icons.shopping_cart_outlined, activeIcon: Icons.shopping_cart, title: 'Purchase', isSelected: widget.currentIndex == 3, isExpanded: _isExpanded, onTap: () => _onDestinationSelected(context, 3)),
                _NavItem(icon: Icons.people_alt_outlined, activeIcon: Icons.people_alt, title: 'Khata', isSelected: widget.currentIndex == 4, isExpanded: _isExpanded, onTap: () => _onDestinationSelected(context, 4)),
                _NavItem(icon: Icons.inventory_2_outlined, activeIcon: Icons.inventory_2, title: 'Inventory', isSelected: widget.currentIndex == 5, isExpanded: _isExpanded, onTap: () => _onDestinationSelected(context, 5)),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), child: Divider()),
                _NavItem(icon: Icons.settings_outlined, activeIcon: Icons.settings, title: 'Settings', isSelected: widget.currentIndex == 6, isExpanded: _isExpanded, onTap: () => _onDestinationSelected(context, 6)),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final IconData activeIcon;
  final String title;
  final bool isSelected;
  final bool isExpanded;
  final VoidCallback onTap;

  const _NavItem({required this.icon, required this.activeIcon, required this.title, required this.isSelected, required this.isExpanded, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primaryContainer : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: isExpanded ? 12 : 0),
          child: Row(
            mainAxisAlignment: isExpanded ? MainAxisAlignment.start : MainAxisAlignment.center,
            children: [
              Icon(isSelected ? activeIcon : icon, color: isSelected ? AppColors.primary : AppColors.textSecondary, size: 24),
              if (isExpanded) ...[
                const SizedBox(width: 16),
                Expanded(child: Text(title, style: TextStyle(color: isSelected ? AppColors.primary : AppColors.textPrimary, fontWeight: isSelected ? FontWeight.bold : FontWeight.w500), overflow: TextOverflow.ellipsis)),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
