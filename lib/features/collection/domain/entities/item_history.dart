import 'package:whisky_shop/features/collection/domain/entities/item_attachment.dart';

class ItemHistory {
  const ItemHistory({
    required this.id,
    required this.title,
    required this.label,
    required this.description,
    required this.attachments,
  });

  final String id;
  final String title;
  final String label;
  final String description;
  final List<ItemAttachment> attachments;
}
