import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:whisky_shop/features/collection/domain/entities/item_tasting_note.dart';
import 'package:whisky_shop/features/collection/domain/entities/item_tasting_note_group.dart';
import 'package:whisky_shop/gen/assets.gen.dart';

class TastingNotesView extends StatelessWidget {
  const TastingNotesView({
    super.key,
    required this.groups,
    required this.userGroups,
    this.onYourNotesTap,
    this.showVideoPlaceholder = true,
  });

  final List<ItemTastingNoteGroup> groups;
  final List<ItemTastingNoteGroup> userGroups;
  final VoidCallback? onYourNotesTap;
  final bool showVideoPlaceholder;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final ItemTastingNoteGroup? expertGroup = groups.isNotEmpty
        ? groups.first
        : null;
    final ItemTastingNoteGroup? myGroup = userGroups.isNotEmpty
        ? userGroups.first
        : null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showVideoPlaceholder)
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              decoration: BoxDecoration(color: theme.colors.black2),
              alignment: Alignment.center,
              child: Icon(
                Icons.play_arrow_rounded,
                color: theme.colors.grey2,
                size: 40,
              ),
            ),
          ),
        const SizedBox(height: 16),
        Text(
          'Tasting notes',
          style: theme.textStyles.titleLarge?.copyWith(
            color: theme.colors.grey1,
          ),
        ),
        const SizedBox(height: 4),
        if (expertGroup != null)
          Text(
            'by ${expertGroup.name}',
            style: theme.textStyles.bodyLarge?.copyWith(
              color: theme.colors.grey1,
            ),
          ),
        const SizedBox(height: 16),
        if (expertGroup != null)
          ...expertGroup.tastingNotes.map(
            (n) => _NoteCard(note: n, theme: theme),
          ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Your notes',
              style: theme.textStyles.titleLarge?.copyWith(
                color: theme.colors.grey1,
              ),
            ),
            IconButton(
              onPressed: onYourNotesTap,
              icon: SvgPicture.asset(
                Assets.icons.arrowLeft,
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  theme.colors.grey1,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
        if (myGroup != null) ...[
          const SizedBox(height: 8),
          ...myGroup.tastingNotes.map((n) => _NoteCard(note: n, theme: theme)),
        ],
      ],
    );
  }
}

class _NoteCard extends StatelessWidget {
  const _NoteCard({required this.note, required this.theme});
  final ItemTastingNote note;
  final ThemeFields theme;

  @override
  Widget build(BuildContext context) {
    final List<String> lines = note.description
        .split('\n')
        .where((e) => e.trim().isNotEmpty)
        .toList();

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: theme.colors.black2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title,
            style: theme.textStyles.titleLarge?.copyWith(
              color: theme.colors.grey1,
            ),
          ),
          const SizedBox(height: 8),
          if (lines.isEmpty)
            Text(
              note.description,
              style: theme.textStyles.bodyLarge?.copyWith(
                color: theme.colors.grey1,
              ),
            )
          else
            ...lines.map(
              (line) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  line,
                  style: theme.textStyles.bodyLarge?.copyWith(
                    color: theme.colors.grey1,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
