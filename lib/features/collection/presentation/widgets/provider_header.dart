import 'package:flutter/material.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whisky_shop/core/widgets/app_icon_button.dart';
import 'package:whisky_shop/gen/assets.gen.dart';

class ProviderHeader extends SliverPersistentHeaderDelegate {
  const ProviderHeader({
    required this.maxExtentHeight,
    required this.minExtentHeight,
  });

  final double maxExtentHeight;
  final double minExtentHeight;

  @override
  double get maxExtent => maxExtentHeight;

  @override
  double get minExtent => minExtentHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final availableHeight = (maxExtent - shrinkOffset).clamp(
      minExtent,
      maxExtent,
    );
    final theme = context.theme;
    return Stack(
      children: [
        Positioned(
          left: 24,
          top: 24,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(color: theme.colors.black3),
            child: Text(
              'Genesis Collection',
              style: theme.textStyles.bodySmall?.copyWith(
                color: theme.colors.grey1,
              ),
            ),
          ),
        ),
        Positioned(
          right: 24,
          top: 24,
          child: AppIconButton(
            onPressed: () {
              context.router.pop();
            },
            backgroundColor: theme.colors.black3,
            padding: const EdgeInsets.all(8),
            icon: SvgPicture.asset(
              Assets.icons.close,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                theme.colors.grey1,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.fromLTRB(16, 80, 16, 0),
            alignment: Alignment.center,
            height: availableHeight,
            child: const _ProviderDropdown(),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant ProviderHeader oldDelegate) {
    return oldDelegate.maxExtentHeight != maxExtentHeight ||
        oldDelegate.minExtentHeight != minExtentHeight;
  }
}

class _ProviderDropdown extends StatelessWidget {
  const _ProviderDropdown();

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.colors.black3,
          border: Border.all(color: theme.colors.black3),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Assets.icons.genuineIcon.path, width: 23, height: 24),
            const SizedBox(width: 8),
            Text(
              'Genuine Bottle (Unopened)',
              style: theme.textStyles.bodyMedium?.copyWith(
                color: theme.colors.white,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 20,
              color: theme.colors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
