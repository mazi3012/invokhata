import 'package:flutter/material.dart';

/// Centralized brand & semantic color palette for InvoKhata.
///
/// Keeping every color in one place makes the app effortless to re-theme
/// and guarantees visual consistency across all screens.
class AppColors {
  AppColors._();

  // ─── Brand / Primary (soft professional blue) ────────────────────────
  static const Color primary = Color(0xFF4A90D9);
  static const Color primaryDark = Color(0xFF357ABD);
  static const Color primaryDarker = Color(0xFF2E6BA8);
  static const Color primaryLight = Color(0xFFD6E4F0);
  static const Color primaryContainer = Color(0xFFEBF3FA);

  // ─── Neutrals / Surfaces ─────────────────────────────────────────────
  static const Color background = Color(0xFFF7FAFD);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceAlt = Color(0xFFF0F4F9);
  static const Color border = Color(0xFFE3EAF1);
  static const Color divider = Color(0xFFEDF2F7);

  // ─── Text ────────────────────────────────────────────────────────────
  static const Color textPrimary = Color(0xFF1B2A3B);
  static const Color textSecondary = Color(0xFF5C6B7F);
  static const Color textHint = Color(0xFF94A3B8);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // ─── Brand 2: Accent / Warm helper (used sparingly for emphasis) ────
  static const Color accent = Color(0xFFF4845F);
  static const Color accentContainer = Color(0xFFFFE9E0);

  // ─── Status / Semantic ───────────────────────────────────────────────
  static const Color success = Color(0xFF3FA96B);
  static const Color successContainer = Color(0xFFE4F4EA);
  static const Color warning = Color(0xFFF5A623);
  static const Color warningContainer = Color(0xFFFFF2D6);
  static const Color danger = Color(0xFFE2554D);
  static const Color dangerContainer = Color(0xFFFDE8E7);
  static const Color info = Color(0xFF48A0F0);
  static const Color infoContainer = Color(0xFFE3F0FC);
}
