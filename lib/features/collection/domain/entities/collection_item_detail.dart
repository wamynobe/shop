import 'package:whisky_shop/features/collection/domain/entities/item_detail.dart';
import 'package:whisky_shop/features/collection/domain/entities/item_history.dart';
import 'package:whisky_shop/features/collection/domain/entities/item_tasting_note_group.dart';

class CollectionItemDetail {
  const CollectionItemDetail({
    required this.id,
    required this.name,
    required this.age,
    required this.number,
    this.imageUrl = '',
    this.detail,
    this.tastingNoteGroups = const [],
    this.userTastingNoteGroups = const [],
    this.histories = const [],
  });

  final String id;
  final String name;
  final int age;
  final int number;
  final String imageUrl;
  final ItemDetail? detail;
  final List<ItemTastingNoteGroup> tastingNoteGroups;
  final List<ItemTastingNoteGroup> userTastingNoteGroups;
  final List<ItemHistory> histories;
}
