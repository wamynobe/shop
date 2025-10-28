import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';

class NavigatorItem extends StatelessWidget {
  const NavigatorItem({
    super.key,
    required this.label,
    required this.asset,
    required this.selected,
    required this.onTap,
  });
  final String label;
  final String asset;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.theme;
    final color = selected ? t.colors.white : t.colors.grey3;
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              asset,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
            ),
            const SizedBox(height: 8),
            Text(label, style: t.textStyles.bodySmall?.copyWith(color: color)),
          ],
        ),
      ),
    );
  }
}
