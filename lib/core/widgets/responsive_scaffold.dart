import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import 'app_bottom_nav.dart';
import 'app_side_nav.dart';
import 'app_drawer.dart';
import 'app_header.dart';

class ResponsiveScaffold extends StatelessWidget {
  final Widget body;
  final int currentIndex;
  
  final String? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  
  final Color? backgroundColor;
  final Color? foregroundColor;

  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool showDrawer;

  const ResponsiveScaffold({
    super.key,
    required this.body,
    required this.currentIndex,
    this.title,
    this.actions,
    this.bottom,
    this.backgroundColor,
    this.foregroundColor,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.showDrawer = true,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 900) {
          return Scaffold(
            appBar: null,
            drawer: null, // No hamburger drawer on desktop
            body: Row(
              children: [
                AppSideNav(currentIndex: currentIndex),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (title != null || actions != null || bottom != null)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (title != null || actions != null)
                                Row(
                                  children: [
                                    if (title != null)
                                      Expanded(
                                        child: Text(
                                          title!,
                                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24, // Medium font size
                                            color: AppColors.textPrimary,
                                          ),
                                        ),
                                      )
                                    else
                                      const Spacer(),
                                    if (actions != null)
                                      ...actions!,
                                  ],
                                ),
                              if (bottom != null) ...[
                                if (title != null || actions != null) const SizedBox(height: 16),
                                Theme(
                                  data: Theme.of(context).copyWith(
                                    tabBarTheme: const TabBarThemeData(
                                      labelColor: AppColors.primary,
                                      unselectedLabelColor: AppColors.textSecondary,
                                    ),
                                  ),
                                  child: bottom!,
                                ),
                              ],
                            ],
                          ),
                        ),
                      Expanded(child: body),
                    ],
                  ),
                ),
              ],
            ),
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
          );
        } else {
          return Scaffold(
            appBar: AppHeader(
              title: title,
              actions: actions,
              bottom: bottom,
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor,
            ),
            drawer: showDrawer ? const AppDrawer() : null,
            body: body,
            bottomNavigationBar: AppBottomNav(currentIndex: currentIndex),
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
          );
        }
      },
    );
  }
}
