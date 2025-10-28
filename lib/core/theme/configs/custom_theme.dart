import 'package:flutter/material.dart';
import 'package:whisky_shop/core/theme/configs/app_typography.dart';

import 'app_colors.dart';

// ThemeFields container holding custom tokens
class ThemeFields {
  final TextTheme textStyles;
  final CustomColors colors;
  final CustomTextStyles customTextStyles;

  const ThemeFields({
    required this.textStyles,
    required this.colors,
    required this.customTextStyles,
  });
}

// Extension to attach and retrieve ThemeFields by brightness
extension ThemeDataExtensions on ThemeData {
  static final Map<Brightness, ThemeFields> _own = {};

  void addOwn(ThemeFields own) {
    _own[brightness] = own;
  }

  ThemeFields theme() {
    var o = _own[brightness];
    o ??= myThemeField;
    return o;
  }
}

ThemeFields themeField(BuildContext context) => Theme.of(context).theme();

extension BuildContextThemeExtension on BuildContext {
  ThemeFields get theme => Theme.of(this).theme();
}

class CustomColors {
  const CustomColors({
    required this.primary,
    required this.secondary,
    required this.error,
    required this.ink,
    required this.grey3,
    required this.grey2,
    required this.grey1,
    required this.black2,
    required this.black3,
    required this.black1,
    required this.white,
  });

  final Color primary;
  final Color secondary;
  final Color error;
  final Color ink;
  final Color grey3;
  final Color grey2;
  final Color grey1;
  final Color black3;
  final Color black2;
  final Color black1;
  final Color white;
}

// Our concrete theme field instance using design tokens
final myThemeField = ThemeFields(
  colors: const CustomColors(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    error: AppColors.error,
    ink: AppColors.ink,
    grey3: AppColors.grey3,
    grey2: AppColors.grey2,
    grey1: AppColors.grey1,
    black3: AppColors.black3,
    black2: AppColors.black2,
    black1: AppColors.black1,
    white: AppColors.white,
  ),
  textStyles: AppTypography.lightTextTheme(AppColors.ink),
  customTextStyles: CustomTextStyles(
    lato16: AppTypography.lato16(AppColors.ink),
    buttonLarge: AppTypography.buttonLarge(AppColors.ink),
  ),
);
