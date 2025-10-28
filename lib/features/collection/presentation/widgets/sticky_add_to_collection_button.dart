import 'package:flutter/material.dart';
import 'package:whisky_shop/core/widgets/app_button.dart';

class StickyAddToCollectionButton extends StatelessWidget {
  const StickyAddToCollectionButton({
    super.key,
    required this.onPressed,
    this.label = 'Add to my collection',
  });

  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      right: 16,
      bottom: 0,
      child: SafeArea(
        child: Center(
          child: AppButton(
            size: AppButtonSize.medium,
            expand: false,
            onPressed: onPressed,
            alignment: () => null,
            label: label,
            prefixIcon: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
