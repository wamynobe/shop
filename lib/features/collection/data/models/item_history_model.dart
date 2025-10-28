import 'package:whisky_shop/features/collection/data/models/item_attachment_model.dart';
import 'package:whisky_shop/features/collection/domain/entities/item_history.dart';

class ItemHistoryModel extends ItemHistory {
  const ItemHistoryModel({
    required super.id,
    required super.title,
    required super.label,
    required super.description,
    required super.attachments,
  });

  factory ItemHistoryModel.fromJson(Map<String, dynamic> json) =>
      ItemHistoryModel(
        id: json['id'] as String,
        title: json['title'] as String,
        label: json['label'] as String,
        description: json['description'] as String,
        attachments: (json['attachments'] as List<dynamic>)
            .map((e) => ItemAttachmentModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}
