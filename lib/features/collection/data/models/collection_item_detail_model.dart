import 'package:whisky_shop/features/collection/data/models/item_history_model.dart';
import 'package:whisky_shop/features/collection/data/models/item_tasting_note_group_model.dart';
import 'package:whisky_shop/features/collection/data/models/item_detail_model.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item_detail.dart';

class CollectionItemDetailModel extends CollectionItemDetail {
  const CollectionItemDetailModel({
    required super.id,
    required super.name,
    required super.age,
    required super.number,
    super.imageUrl = '',
    super.detail,
    super.tastingNoteGroups,
    super.userTastingNoteGroups,
    super.histories,
  });

  factory CollectionItemDetailModel.fromJson(Map<String, dynamic> json) {
    return CollectionItemDetailModel(
      id: json['id'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      imageUrl: json['imageUrl'] ?? '',
      detail: json['detail'] != null
          ? ItemDetailModel.fromJson(json['detail'] as Map<String, dynamic>)
          : null,
      tastingNoteGroups: json['tastingNoteGroups'] != null
          ? (json['tastingNoteGroups'] as List<dynamic>)
                .map(
                  (e) => ItemTastingNoteGroupModel.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList()
          : [],
      userTastingNoteGroups: json['userTastingNoteGroups'] != null
          ? (json['userTastingNoteGroups'] as List<dynamic>)
                .map(
                  (e) => ItemTastingNoteGroupModel.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList()
          : [],
      histories: json['histories'] != null
          ? (json['histories'] as List<dynamic>)
                .map(
                  (e) => ItemHistoryModel.fromJson(e as Map<String, dynamic>),
                )
                .toList()
          : [],
    );
  }
}
