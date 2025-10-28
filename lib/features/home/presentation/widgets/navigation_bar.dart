import 'package:flutter/material.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:whisky_shop/features/home/presentation/widgets/navigation_item.dart';
import 'package:whisky_shop/gen/assets.gen.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key, required this.index, required this.onTap});
  final int index;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    final t = context.theme;
    return Container(
      decoration: BoxDecoration(color: t.colors.black3),
      padding: const EdgeInsets.only(top: 8, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigatorItem(
            label: 'Scan',
            asset: Assets.icons.scan,
            selected: index == 0,
            onTap: () => onTap(0),
          ),
          NavigatorItem(
            label: 'Collection',
            asset: Assets.icons.squaresFour,
            selected: index == 1,
            onTap: () => onTap(1),
          ),
          NavigatorItem(
            label: 'Shop',
            asset: Assets.icons.bottle,
            selected: index == 2,
            onTap: () => onTap(2),
          ),
          NavigatorItem(
            label: 'Settings',
            asset: Assets.icons.setting,
            selected: index == 3,
            onTap: () => onTap(3),
          ),
        ],
      ),
    );
  }
}
