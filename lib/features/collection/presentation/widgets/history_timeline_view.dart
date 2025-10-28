import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timelines_plus/timelines_plus.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:whisky_shop/features/collection/domain/entities/item_history.dart';
import 'package:whisky_shop/features/collection/presentation/widgets/custom_line_connector.dart';
import 'package:whisky_shop/gen/assets.gen.dart';

class HistoryTimelineView extends StatelessWidget {
  const HistoryTimelineView({super.key, required this.histories});

  final List<ItemHistory> histories;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    var indexCount = 0;

    return FixedTimeline.tileBuilder(
      theme: TimelineThemeData(
        nodePosition: 0,
        indicatorTheme: IndicatorThemeData(
          color: theme.colors.white,
          size: 24,
          position: 0.1,
        ),
        connectorTheme: ConnectorThemeData(
          color: theme.colors.primary,
          thickness: 1,
        ),
      ),
      builder: TimelineTileBuilder.connected(
        connectionDirection: ConnectionDirection.before,
        itemCount: histories.length,
        contentsBuilder: (context, index) {
          final h = histories[index];
          return _HistoryCard(history: h);
        },
        indicatorBuilder: (_, index) {
          return const DotIndicator();
        },
        connectorBuilder: (_, index, ___) {
          // make sure the connector accent icon is drawn only once
          if (index != indexCount) {
            indexCount = index;
            return HistoryTimelineLineConnector(shouldDrawAccent: true);
          }
          return HistoryTimelineLineConnector(shouldDrawAccent: false);
        },
      ),
    );
  }
}

class _HistoryCard extends StatelessWidget {
  const _HistoryCard({required this.history});
  final ItemHistory history;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final List<String> lines = history.description
        .split('\n')
        .where((e) => e.trim().isNotEmpty)
        .toList();

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: theme.colors.black1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            history.label,
            style: theme.textStyles.bodySmall?.copyWith(
              color: theme.colors.grey1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            history.title,
            style: theme.textStyles.titleLarge?.copyWith(
              color: theme.colors.grey1,
            ),
          ),
          const SizedBox(height: 8),
          if (lines.isEmpty)
            Text(
              history.description,
              style: theme.textStyles.bodyLarge?.copyWith(
                color: theme.colors.grey1,
              ),
            )
          else
            ...lines.map(
              (l) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  l,
                  style: theme.textStyles.bodyLarge?.copyWith(
                    color: theme.colors.grey1,
                  ),
                ),
              ),
            ),
          const SizedBox(height: 12),
          if (history.attachments.isNotEmpty) _AttachmentsRow(),
        ],
      ),
    );
  }
}

class _AttachmentsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: theme.colors.black3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                Assets.icons.paperclip,
                width: 16,
                height: 16,
                colorFilter: ColorFilter.mode(
                  theme.colors.grey1,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                'Attachments',
                style: theme.textStyles.bodySmall?.copyWith(
                  color: theme.colors.grey1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: const [
              _AttachmentBox(),
              SizedBox(width: 8),
              _AttachmentBox(),
              SizedBox(width: 8),
              _AttachmentBox(),
            ],
          ),
        ],
      ),
    );
  }
}

class _AttachmentBox extends StatelessWidget {
  const _AttachmentBox();
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(color: theme.colors.black2),
    );
  }
}
