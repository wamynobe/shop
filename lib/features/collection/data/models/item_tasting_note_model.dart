import 'package:whisky_shop/features/collection/domain/entities/item_tasting_note.dart';

class ItemTastingNoteModel extends ItemTastingNote {
  const ItemTastingNoteModel({
    required super.id,
    required super.title,
    required super.description,
  });

  factory ItemTastingNoteModel.fromJson(Map<String, dynamic> json) =>
      ItemTastingNoteModel(
        id: json['id'] as String,
        title: json['title'] as String,
        description: json['description'] as String,
      );
}
