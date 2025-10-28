import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item.dart';

class BottleCard extends StatelessWidget {
  const BottleCard({
    super.key,
    required this.item,
    required this.onTap,
    this.heroTag,
  });
  final CollectionItem item;
  final VoidCallback onTap;
  final String? heroTag;
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: theme.colors.black1),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: heroTag != null
                  ? Hero(
                      tag: heroTag!,
                      child: CachedNetworkImage(imageUrl: item.imageUrl),
                    )
                  : CachedNetworkImage(imageUrl: item.imageUrl),
            ),
            const SizedBox(height: 16),
            Text(
              item.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textStyles.titleLarge?.copyWith(
                color: theme.colors.grey1,
              ),
            ),
            Text(
              '${item.age} #${item.number}',
              style: theme.textStyles.titleLarge?.copyWith(
                color: theme.colors.grey1,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '(112/158)',
              style: theme.textStyles.bodySmall?.copyWith(
                color: theme.colors.grey2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
