import 'package:flutter/material.dart';

class FunctionUtils {
  static void unfocus(BuildContext context) {
    final currentFocus = FocusManager.instance.primaryFocus;
    if (currentFocus != null && currentFocus.hasFocus) {
      currentFocus.unfocus();
    }
  }
}
