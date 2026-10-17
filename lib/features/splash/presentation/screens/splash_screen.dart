import 'dart:async';

import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../features/dashboard/presentation/screens/dashboard_screen.dart';

/// InvoKhata branded splash screen.
///
/// Shows a smooth ~3s animated entrance (logo fade + scale + gentle float),
/// a tagline, and a "Developed in India" footer, then navigates to the
/// dashboard with a soft fade transition.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  static const _splashDuration = Duration(milliseconds: 3000);

  late final AnimationController _controller;
  late final Animation<double> _logoOpacity;
  late final Animation<double> _logoScale;
  late final Animation<double> _logoFloat;
  late final Animation<double> _taglineOpacity;
  late final Animation<double> _taglineOffset;
  late final Animation<double> _footerOpacity;
  Timer? _navigatorTimer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _splashDuration);

    // Logo → fade in & scale up with a friendly spring settle.
    _logoOpacity = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.35, curve: Curves.easeIn),
    );
    _logoScale = Tween<double>(begin: 0.35, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOutBack),
      ),
    );
    // Logo gently floats up/down for a smooth "alive" feel.
    _logoFloat = TweenSequence<double>([
      TweenSequenceItem(
          tween: Tween(begin: 0.0, end: -9.0)
              .chain(CurveTween(curve: Curves.easeInOut)),
          weight: 50),
      TweenSequenceItem(
          tween: Tween(begin: -9.0, end: 0.0)
              .chain(CurveTween(curve: Curves.easeInOut)),
          weight: 50),
    ]).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.35, 0.95),
    ));

    // Tagline → fade + slide up slightly after the logo lands.
    _taglineOpacity = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.45, 0.7, curve: Curves.easeIn),
    );
    _taglineOffset = Tween<double>(begin: 26, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.45, 0.7, curve: Curves.easeOutCubic),
      ),
    );

    // Footer ("Developed in India") fades in last.
    _footerOpacity = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.72, 0.95, curve: Curves.easeIn),
    );

    _controller.forward();
    _navigatorTimer = Timer(
        _splashDuration + const Duration(milliseconds: 250), _goToDashboard);
  }

  void _goToDashboard() {
    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const DashboardScreen(),
        transitionsBuilder: (_, animation, __, child) =>
            FadeTransition(opacity: animation, child: child),
        transitionDuration: const Duration(milliseconds: 550),
      ),
    );
  }

  @override
  void dispose() {
    _navigatorTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.primary, AppColors.primaryDarker],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // ── Center brand block ───────────────────────────────────
              Center(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, _) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Opacity(
                          opacity: _logoOpacity.value,
                          child: Transform.translate(
                            offset: Offset(0, _logoFloat.value),
                            child: Transform.scale(
                              scale: _logoScale.value,
                              child: Container(
                                width: 216,
                                height: 216,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x2EFFFFFF),
                                      blurRadius: 26,
                                      spreadRadius: 4,
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    'assets/branding/invokhata_logo.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Opacity(
                          opacity: _taglineOpacity.value,
                          child: Transform.translate(
                            offset: Offset(0, _taglineOffset.value),
                            child: const Text(
                              'Offline GST Billing • Khata • Invoices',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.4,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        Opacity(
                          opacity: _taglineOpacity.value,
                          child: Transform.translate(
                            offset: Offset(0, _taglineOffset.value),
                            child: Container(
                              width: 44,
                              height: 4,
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.85),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // ── "Developed in India" footer ──────────────────────────
              Positioned(
                left: 0,
                right: 0,
                bottom: 28,
                child: AnimatedBuilder(
                  animation: _footerOpacity,
                  builder: (context, child) => Opacity(
                    opacity: _footerOpacity.value,
                    child: child,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _DevelopedInIndiaBadge(),
                      const SizedBox(height: 10),
                      const Text(
                        'v1.0.0',
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 1,
                          color: Colors.white54,
                        ),
                      ),
                    ],
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

/// Pill badge with the Indian tricolor accent + "Developed in India".
class _DevelopedInIndiaBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const saffron = Color(0xFFFF9933);
    const white = Colors.white;
    const green = Color(0xFF138808);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.white.withValues(alpha: 0.25)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Mini Indian tricolor flag bar.
          Container(
            width: 20,
            height: 13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: white.withValues(alpha: 0.6)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: const Column(
                children: [
                  Expanded(child: ColoredBox(color: saffron)),
                  Expanded(child: ColoredBox(color: white)),
                  Expanded(child: ColoredBox(color: green)),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            'Developed in India',
            style: TextStyle(
              fontSize: 13.5,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
