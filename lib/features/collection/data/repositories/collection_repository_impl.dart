import 'package:whisky_shop/core/model/exception/remote_exception.dart';
import 'package:whisky_shop/core/model/result/result.dart';
import 'package:whisky_shop/features/collection/data/datasources/collection_datasource.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item_detail.dart';
import 'package:whisky_shop/features/collection/domain/repositories/collection_repository.dart';

class CollectionRepositoryImpl implements CollectionRepository {
  CollectionRepositoryImpl({required this.local, required this.remote});
  final CollectionLocalDatabaseDataSource local;
  final CollectionDataSource remote;

  @override
  Future<Result<Exception, CollectionItemDetail>> fetchItemById(
    String id,
  ) async {
    final item = await remote.getItemDetail(id);
    return item.map(
      success: (success) async {
        final item = success.data;
        await local.upsertItem(item);
        return Result.success(item);
      },
      failure: (failure) async {
        final exception = failure.exception;
        Result<Exception, CollectionItemDetail>? localItem;
        if (exception is RemoteException) {
          await exception.whenOrNull(
            networkUnavailable: () async {
              localItem = await local.getItemDetail(id);
            },
          );
        }
        return localItem ?? Result.failure(exception);
      },
    );
  }

  @override
  Future<Result<Exception, List<CollectionItem>>> fetchAll() async {
    final items = await remote.getItems();
    return items.map(
      success: (success) async {
        final items = success.data;
        await local.upsertItems(items);
        return Result.success(items);
      },
      failure: (failure) async {
        final exception = failure.exception;
        Result<Exception, List<CollectionItem>>? localItems;
        if (exception is RemoteException) {
          await exception.whenOrNull(
            networkUnavailable: () async {
              localItems = await local.getItems();
            },
          );
        }
        return localItems ?? Result.failure(exception);
      },
    );
  }
}
