import 'package:whisky_shop/features/collection/domain/entities/item_detail.dart';

class ItemDetailModel extends ItemDetail {
  const ItemDetailModel({
    required super.distillery,
    required super.region,
    required super.country,
    required super.type,
    required super.ageStatement,
    required super.filled,
    required super.bottled,
    required super.caskNumber,
    required super.abv,
    required super.size,
    required super.finish,
  });

  factory ItemDetailModel.fromJson(Map<String, dynamic> json) {
    return ItemDetailModel(
      distillery: json['distillery'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
      type: json['type'] as String,
      ageStatement: (json['ageStatement'] as num).toInt(),
      filled: json['filled'] as String,
      bottled: json['bottled'] as String,
      caskNumber: json['caskNumber'] as String,
      abv: json['abv'] as String,
      size: json['size'] as String,
      finish: json['finish'] as String,
    );
  }
}
