import 'package:whisky_shop/core/model/attachment/attachment_type.dart';

class ItemAttachment {
  const ItemAttachment({
    required this.id,
    required this.url,
    required this.type,
  });

  final String id;
  final String url;
  final AttachmentType type;
}
