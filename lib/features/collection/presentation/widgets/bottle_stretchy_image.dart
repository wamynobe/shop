import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BottleStretchyImage extends StatelessWidget {
  const BottleStretchyImage({super.key, required this.imageUrl, this.heroTag});

  final String imageUrl;
  final String? heroTag;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        return SizedBox(
          width: width,
          child: heroTag != null
              ? Hero(
                  tag: heroTag!,
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.contain,
                    fadeInDuration: const Duration(milliseconds: 200),
                    errorWidget: (_, __, ___) => const SizedBox(),
                  ),
                )
              : CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.contain,
                  fadeInDuration: const Duration(milliseconds: 200),
                  errorWidget: (_, __, ___) => const SizedBox(),
                ),
        );
      },
    );
  }
}

class BottleStretchyHeader extends SliverPersistentHeaderDelegate {
  const BottleStretchyHeader({
    required this.imageUrl,
    required this.maxExtentHeight,
    required this.minExtentHeight,
    this.heroTag,
  });

  final String imageUrl;
  final double maxExtentHeight;
  final double minExtentHeight;
  final String? heroTag;

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
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 40, 16, 40),
      color: Colors.transparent,
      alignment: Alignment.center,
      child: SizedBox(
        height: availableHeight,
        child: BottleStretchyImage(imageUrl: imageUrl, heroTag: heroTag),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant BottleStretchyHeader oldDelegate) {
    return oldDelegate.imageUrl != imageUrl ||
        oldDelegate.maxExtentHeight != maxExtentHeight ||
        oldDelegate.minExtentHeight != minExtentHeight ||
        oldDelegate.heroTag != heroTag;
  }
}
