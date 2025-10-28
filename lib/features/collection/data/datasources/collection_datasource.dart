import 'package:whisky_shop/core/model/result/result.dart';
import 'package:whisky_shop/features/collection/data/models/collection_item_detail_model.dart';
import 'package:whisky_shop/features/collection/data/models/collection_item_model.dart';

abstract class CollectionDataSource {
  Future<Result<Exception, List<CollectionItemModel>>> getItems();
  Future<Result<Exception, CollectionItemDetailModel>> getItemDetail(String id);
}

abstract class ICollectionLocalDatabaseDataSource {
  Future<Result<Exception, void>> upsertItems(
    List<CollectionItemModel> items,
  ) async => Result.success(null);
  Future<Result<Exception, void>> upsertItem(
    CollectionItemDetailModel item,
  ) async => Result.success(null);
}

abstract class CollectionLocalDatabaseDataSource extends CollectionDataSource
    implements ICollectionLocalDatabaseDataSource {}
