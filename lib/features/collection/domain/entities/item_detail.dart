class ItemDetail {
  const ItemDetail({
    required this.distillery,
    required this.region,
    required this.country,
    required this.type,
    required this.ageStatement,
    required this.filled,
    required this.bottled,
    required this.caskNumber,
    required this.abv,
    required this.size,
    required this.finish,
  });

  final String distillery;
  final String region;
  final String country;
  final String type;
  final int ageStatement;
  final String filled;
  final String bottled;
  final String caskNumber;
  final String abv;
  final String size;
  final String finish;
}
