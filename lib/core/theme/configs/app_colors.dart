import 'package:flutter/material.dart';

/// Centralized color tokens extracted from design.
class AppColors {
  // Brand
  static const Color primary = Color(0xFFD49A00); // gold
  static const Color secondary = Color(0xFFFFB901);

  // Greyscale / Ink
  static const Color ink = Color(0xFF0B1519); // greyscale/black3
  static const Color black3 = Color(0xFF0B1519);
  static const Color black2 = Color(0xFF0E1C21);
  static const Color black1 = Color(0xFF122329);
  static const Color grey3 = Color(0xFF899194);
  static const Color grey2 = Color(0xFFB8BDBF);
  static const Color grey1 = Color(0xFFE7E9EA);
  static const Color white = Color(0xFFFFFFFF);

  // Semantic
  static const Color error = Color(0xFFFF1F0B);
}

ColorScheme buildColorSchemeLight() {
  return const ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: AppColors.ink,
    secondary: AppColors.secondary,
    onSecondary: AppColors.ink,
    surface: AppColors.white,
    onSurface: AppColors.ink,
    error: AppColors.error,
    onError: AppColors.white,
  );
}
