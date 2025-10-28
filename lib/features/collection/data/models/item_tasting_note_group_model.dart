import 'package:whisky_shop/features/collection/domain/entities/item_tasting_note_group.dart';
import 'package:whisky_shop/features/collection/data/models/item_tasting_note_model.dart';

class ItemTastingNoteGroupModel extends ItemTastingNoteGroup {
  const ItemTastingNoteGroupModel({
    required super.id,
    required super.name,
    required super.email,
    required super.tastingNotes,
  });

  factory ItemTastingNoteGroupModel.fromJson(Map<String, dynamic> json) =>
      ItemTastingNoteGroupModel(
        id: json['id'] as String,
        name: json['name'] as String,
        email: json['email'] as String,
        tastingNotes: (json['tastingNotes'] as List<dynamic>)
            .map(
              (e) => ItemTastingNoteModel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );
}
