import 'package:flutter/material.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';

enum AppButtonType { filled, text }

enum AppButtonSize { large, medium }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.type = AppButtonType.filled,
    this.size = AppButtonSize.large,
    this.expand = true,
    this.prefixIcon,
    this.alignment,
  });

  final String label;
  final VoidCallback? onPressed;
  final AppButtonType type;
  final AppButtonSize size;
  final bool expand;
  final Widget? prefixIcon;
  final ValueGetter<Alignment?>? alignment;
  EdgeInsets get _padding => switch (size) {
    AppButtonSize.large => const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 16,
    ),
    AppButtonSize.medium => const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
  };

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    final borderRadius = BorderRadius.circular(8);
    final backgroundColor = type == AppButtonType.filled
        ? theme.colors.primary
        : Colors.transparent;
    final textColor = type == AppButtonType.filled
        ? theme.colors.ink
        : theme.colors.secondary;
    final shadows = type == AppButtonType.filled
        ? [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.25),
              offset: const Offset(0, 4),
              blurRadius: 4,
            ),
          ]
        : const <BoxShadow>[];

    final button = Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onPressed,
        child: Center(
          child: Container(
            padding: _padding,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: borderRadius,
              boxShadow: shadows,
            ),
            alignment: alignment != null ? alignment!() : Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (prefixIcon != null) ...[
                  prefixIcon!,
                  const SizedBox(width: 8),
                ],
                Text(
                  label,
                  style: theme.customTextStyles.buttonLarge.copyWith(
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    return expand ? SizedBox(width: double.infinity, child: button) : button;
  }
}
