import 'package:flutter/material.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item_detail.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, this.detail});

  final CollectionItemDetail? detail;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final rows = detail != null
        ? <List<String>>[
            ['Distillery', detail?.detail?.distillery ?? ''],
            ['Region', detail?.detail?.region ?? ''],
            ['Country', detail?.detail?.country ?? ''],
            ['Type', detail?.detail?.type ?? ''],
            ['Age statement', '${detail?.detail?.ageStatement ?? ''}'],
            ['Filled', detail?.detail?.filled ?? ''],
            ['Bottled', detail?.detail?.bottled ?? ''],
            ['Cask number', detail?.detail?.caskNumber ?? ''],
            ['ABV', detail?.detail?.abv ?? ''],
            ['Size', detail?.detail?.size ?? ''],
            ['Finish', detail?.detail?.finish ?? ''],
          ]
        : const <List<String>>[];

    return Column(
      children: rows
          .map(
            (pair) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      pair[0],
                      style: theme.textStyles.bodyLarge?.copyWith(
                        color: theme.colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        pair[1],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: theme.textStyles.bodyLarge?.copyWith(
                          color: theme.colors.grey2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
