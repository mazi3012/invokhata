import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/app_colors.dart';

/// Shared header with a brand/navigation row and an optional title bar.
///
/// When a custom bottom widget (such as a TabBar) is supplied, it occupies the
/// bottom area and the page title remains in the AppBar title slot. This avoids
/// rendering the same page title twice.
class AppHeader extends ConsumerWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? onMenuPressed;
  final Widget? leading;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool showBackButton;

  const AppHeader({
    super.key,
    this.title,
    this.onMenuPressed,
    this.leading,
    this.actions,
    this.bottom,
    this.backgroundColor,
    this.foregroundColor,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bgColor = backgroundColor ?? AppColors.primary;
    final fgColor = foregroundColor ?? Colors.white;
    final iconColor = fgColor;
    // Default to 'InvoKhata' so the brand name always appears in the header.
    final displayTitle = title ?? 'InvoKhata';
    return AppBar(
      backgroundColor: bgColor,
      elevation: 0,
      leading: leading ?? _buildMenuButton(context, iconColor),
      titleSpacing: 0,
      title: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const _HeaderLogo(),
            const SizedBox(width: 10),
            Flexible(
              child: _BrandTitle(displayTitle, color: fgColor),
            ),
          ],
        ),
      ),
      actions: actions,
      bottom: _buildBottom(),
      foregroundColor: fgColor,
      iconTheme: IconThemeData(color: iconColor),
      actionsIconTheme: IconThemeData(color: iconColor),
      centerTitle: false,
    );
  }

  Widget _buildMenuButton(BuildContext context, Color iconColor) {
    if (showBackButton) {
      return InkResponse(
        radius: 20,
        onTap: () => Navigator.maybePop(context),
        child: Icon(Icons.arrow_back, color: iconColor, size: 22),
      );
    }
    
    // Hide hamburger menu on desktop wide screens (>= 900) where AppSideNav is used.
    final screenWidth = MediaQuery.sizeOf(context).width;
    if (screenWidth >= 900) {
      return const SizedBox.shrink(); // Hide the button completely
    }

    return InkResponse(
      radius: 20,
      onTap: onMenuPressed ?? () => Scaffold.of(context).openDrawer(),
      child: Icon(Icons.menu, color: iconColor, size: 22),
    );
  }

  PreferredSizeWidget? _buildBottom() {
    final PreferredSizeWidget? customBottom = bottom;

    if (customBottom != null) {
      // A custom bottom (e.g. a TabBar) already serves as the page's secondary
      // header. The page title stays in the AppBar title slot, so we do NOT
      // render another copy of it here — that would duplicate the title.
      return PreferredSize(
        preferredSize: customBottom.preferredSize,
        child: customBottom,
      );
    }

    // No custom bottom: the page title is already rendered in the AppBar
    // title slot (via [_BrandTitle]), so we do NOT add a [_BottomTitleBar].
    // That would display the same title twice.
    return null;
  }

  @override
  Size get preferredSize {
    final bottomHeight = bottom?.preferredSize.height ?? 0.0;
    return Size.fromHeight(kToolbarHeight + bottomHeight);
  }
}

class _HeaderLogo extends StatelessWidget {
  const _HeaderLogo();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 36,
      height: 36,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        child: Image(
          image: AssetImage('assets/branding/invokhata_logo.png'),
          fit: BoxFit.cover,
          width: 36,
          height: 36,
        ),
      ),
    );
  }
}

/// Compact brand title rendered in the AppBar.title slot. Now wrapped in
/// Flexible so it ellipsizes instead of overflowing when space is tight.
class _BrandTitle extends StatelessWidget {
  final String title;
  final Color? color;

  const _BrandTitle(this.title, {this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.2,
      ),
      overflow: TextOverflow.ellipsis,
      softWrap: false,
    );
  }
}
