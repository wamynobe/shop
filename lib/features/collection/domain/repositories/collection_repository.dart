import 'package:whisky_shop/core/model/result/result.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item_detail.dart';

abstract class CollectionRepository {
  Future<Result<Exception, CollectionItemDetail>> fetchItemById(String id);
  Future<Result<Exception, List<CollectionItem>>> fetchAll();
}
