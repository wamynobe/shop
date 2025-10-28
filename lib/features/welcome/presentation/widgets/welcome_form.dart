import 'package:flutter/material.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:whisky_shop/core/widgets/app_button.dart';

class WelcomeForm extends StatelessWidget {
  const WelcomeForm({super.key, this.onScanPressed, this.onSignInPressed});

  final VoidCallback? onScanPressed;
  final VoidCallback? onSignInPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: theme.colors.black1,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome!',
              style: theme.textStyles.headlineLarge?.copyWith(
                color: theme.colors.grey1,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Text text text',
              style: theme.textStyles.bodyLarge?.copyWith(
                color: theme.colors.grey1,
              ),
            ),
            const SizedBox(height: 24),
            AppButton(label: 'Scan bottle', onPressed: onScanPressed),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account?',
                  style: theme.textStyles.bodyLarge?.copyWith(
                    color: theme.colors.grey2,
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: onSignInPressed,
                  style: TextButton.styleFrom(
                    foregroundColor: theme.colors.secondary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  child: Text(
                    'Sign in first',
                    style: theme.textStyles.labelLarge?.copyWith(
                      color: theme.colors.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
