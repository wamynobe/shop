import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';

class SegmentedTabBar extends StatelessWidget implements PreferredSizeWidget {
  const SegmentedTabBar({
    super.key,
    required this.tabs,
    this.isScrollable,
    this.equalWidth = true,
  });

  final List<Widget> tabs;

  /// If true, tabs share equal width (recommended for 2-3 tabs). When true,
  /// isScrollable will be forced to false.
  final bool equalWidth;
  final bool? isScrollable;

  @override
  Size get preferredSize => Size.fromHeight(32.h);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final effectiveScrollable = equalWidth ? false : (isScrollable ?? true);
    return SizedBox(
      height: preferredSize.height,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: theme.colors.black1),
        alignment: Alignment.center,
        child: TabBar(
          tabs: tabs,
          isScrollable: effectiveScrollable,
          dividerColor: Colors.transparent,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          labelPadding: equalWidth
              ? EdgeInsets.zero
              : const EdgeInsets.symmetric(horizontal: 12),
          indicatorPadding: EdgeInsets.zero,
          labelColor: theme.colors.ink,
          unselectedLabelColor: theme.colors.grey3,
          labelStyle: theme.textStyles.bodySmall,
          unselectedLabelStyle: theme.textStyles.bodySmall,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: theme.colors.primary,
            borderRadius: BorderRadius.circular(6),
          ),
          tabAlignment: equalWidth ? TabAlignment.fill : TabAlignment.center,
        ),
      ),
    );
  }
}
