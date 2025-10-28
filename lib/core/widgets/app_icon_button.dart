import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
    this.padding,
  });

  final VoidCallback? onPressed;
  final Widget icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: icon,
      ),
    );
  }
}
