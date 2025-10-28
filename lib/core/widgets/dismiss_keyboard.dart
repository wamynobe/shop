import 'package:flutter/material.dart';

class DismissKeyboard extends StatelessWidget {
  const DismissKeyboard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        final currentFocus = FocusManager.instance.primaryFocus;
        if (currentFocus != null && currentFocus.hasFocus) {
          currentFocus.unfocus();
        }
      },
      child: child,
    );
  }
}
