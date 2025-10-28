import 'package:whisky_shop/features/collection/domain/entities/item_tasting_note.dart';

class ItemTastingNoteGroup {
  const ItemTastingNoteGroup({
    required this.id,
    required this.name,
    required this.email,
    required this.tastingNotes,
  });

  final String id;
  final String name;
  final String email;
  final List<ItemTastingNote> tastingNotes;
}
