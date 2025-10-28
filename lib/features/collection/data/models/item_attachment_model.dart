import 'package:whisky_shop/core/model/attachment/attachment_type.dart';
import 'package:whisky_shop/features/collection/domain/entities/item_attachment.dart';

class ItemAttachmentModel extends ItemAttachment {
  const ItemAttachmentModel({
    required super.id,
    required super.url,
    required super.type,
  });

  factory ItemAttachmentModel.fromJson(Map<String, dynamic> json) =>
      ItemAttachmentModel(
        id: json['id'] as String,
        url: json['url'] as String,
        type: AttachmentTypeExtension.fromString(json['type'].toString()),
      );
}
