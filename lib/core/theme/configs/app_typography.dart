import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Typography tokens aligned with Figma styles.
class AppTypography {
  static TextStyle lato16(Color inkColor) {
    return GoogleFonts.lato(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: inkColor,
    );
  }

  static TextStyle buttonLarge(Color inkColor) {
    return GoogleFonts.ebGaramond(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: inkColor,
    );
  }

  static TextTheme lightTextTheme(Color inkColor) {
    return TextTheme(
      headlineLarge: GoogleFonts.ebGaramond(
        fontWeight: FontWeight.w600,
        fontSize: 32,
        color: inkColor,
      ),
      titleLarge: GoogleFonts.ebGaramond(
        fontWeight: FontWeight.w600,
        fontSize: 22,
        color: inkColor,
      ),
      bodyLarge: GoogleFonts.lato(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: inkColor,
      ),
      bodySmall: GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: inkColor,
      ),
      bodyMedium: GoogleFonts.lato(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: inkColor,
      ),
      labelLarge: GoogleFonts.ebGaramond(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: inkColor,
      ),
    );
  }
}

class CustomTextStyles {
  final TextStyle lato16;

  final TextStyle buttonLarge;

  CustomTextStyles({required this.lato16, required this.buttonLarge});
}
