import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/database/isar_service.dart';
import 'core/theme/app_theme.dart';
import './features/dashboard/presentation/screens/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await IsarService.init();

  runApp(
    const ProviderScope(
      child: InvoKhataApp(),
    ),
  );
}

class InvoKhataApp extends StatelessWidget {
  const InvoKhataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InvoKhata',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      // Edge-to-edge: native side uses WindowCompat.setDecorFitsSystemWindows(window, false)
      // and transparent status/navigation bar themes. Flutter widgets (AppBar, Scaffold,
      // SafeArea) automatically respect MediaQuery.padding/viewPadding for system bars.
      home: const DashboardScreen(),
    );
  }
}
