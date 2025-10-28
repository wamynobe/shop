import 'package:whisky_shop/features/collection/domain/entities/collection_item.dart';

class CollectionItemModel extends CollectionItem {
  const CollectionItemModel({
    required super.id,
    required super.name,
    required super.age,
    required super.number,
    required super.imageUrl,
  });

  factory CollectionItemModel.fromJson(Map<String, dynamic> json) {
    return CollectionItemModel(
      id: json['id'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
    );
  }
}
