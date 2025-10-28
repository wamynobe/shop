import 'package:flutter/material.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:whisky_shop/core/widgets/app_button.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key, this.onContinue, this.onRecover});

  final void Function(String email, String password)? onContinue;
  final VoidCallback? onRecover;

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Email
        _LabeledField(
          label: 'Email',
          hint: 'email@email.com',
          controller: _emailController,
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        // Password
        _LabeledField(
          label: 'Password',
          hint: '•••••••••••',
          controller: _passwordController,
          suffixIcon: IconButton(
            padding: EdgeInsets.all(8),
            iconSize: 24,
            onPressed: () {},
            icon: Icon(Icons.visibility_outlined, color: theme.colors.primary),
          ),
          obscure: true,
        ),
        const SizedBox(height: 24),
        AppButton(
          label: 'Continue',
          onPressed: () => widget.onContinue?.call(
            _emailController.text,
            _passwordController.text,
          ),
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Can’t sign in?",
              style: theme.customTextStyles.lato16.copyWith(
                color: theme.colors.grey2,
              ),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: widget.onRecover,
              style: TextButton.styleFrom(
                foregroundColor: theme.colors.secondary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
              ),
              child: Text(
                'Recover password',
                style: theme.customTextStyles.buttonLarge.copyWith(
                  color: theme.colors.secondary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _LabeledField extends StatelessWidget {
  const _LabeledField({
    required this.label,
    required this.hint,
    required this.controller,
    this.obscure = false,
    this.autofocus = false,
    this.keyboardType,
    this.suffixIcon,
  });

  final String label;
  final String hint;
  final TextEditingController controller;
  final bool obscure;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return TextFormField(
      controller: controller,
      autofocus: autofocus,
      obscureText: obscure,
      keyboardType: keyboardType,
      style: theme.textStyles.bodyLarge?.copyWith(color: theme.colors.grey1),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: theme.textStyles.bodyLarge?.copyWith(
          color: theme.colors.grey1,
        ),
        floatingLabelStyle: theme.textStyles.bodyLarge?.copyWith(
          color: theme.colors.primary,
        ),
        isDense: true,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(vertical: 8),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: theme.colors.primary),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: theme.colors.grey1),
        ),
      ),
      cursorColor: theme.colors.primary,
    );
  }
}
