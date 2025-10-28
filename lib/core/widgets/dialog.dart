import 'package:flutter/material.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';

Future<void> showLoadingDialog(BuildContext context, {String? message}) {
  final theme = context.theme;
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (_) => Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: theme.colors.black1,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: theme.colors.primary,
              ),
            ),
            if (message != null) ...[
              const SizedBox(width: 12),
              Text(
                message,
                style: theme.textStyles.bodyLarge?.copyWith(
                  color: theme.colors.grey1,
                ),
              ),
            ],
          ],
        ),
      ),
    ),
  );
}

Future<void> showErrorDialog(
  BuildContext context,
  Exception exception, {
  String title = 'Error',
}) {
  final theme = context.theme;
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (_) => AlertDialog(
      backgroundColor: theme.colors.black1,
      title: Text(
        title,
        style: theme.textStyles.titleLarge?.copyWith(color: theme.colors.grey1),
      ),
      content: Text(
        exception.toString(),
        style: theme.textStyles.bodyLarge?.copyWith(color: theme.colors.grey1),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          child: Text(
            'OK',
            style: theme.customTextStyles.buttonLarge.copyWith(
              color: theme.colors.secondary,
            ),
          ),
        ),
      ],
    ),
  );
}

void closeDialog(BuildContext context) {
  Navigator.of(context, rootNavigator: true).maybePop();
}
