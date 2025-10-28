import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:whisky_shop/core/model/exception/remote_exception.dart';
import 'package:whisky_shop/core/model/result/result.dart';
import 'package:whisky_shop/features/collection/data/datasources/collection_datasource.dart';
import 'package:whisky_shop/features/collection/data/models/collection_item_detail_model.dart';
import 'package:whisky_shop/features/collection/data/models/models.dart';

class CollectionRemoteDataSource implements CollectionDataSource {
  const CollectionRemoteDataSource();

  @override
  Future<Result<Exception, List<CollectionItemModel>>> getItems() async {
    try {
      final raw = await rootBundle.loadString(
        'assets/mock_data/collections.json',
      );
      // simulate no internet connection
      if (DateTime.now().second % 2 == 0) {
        throw SocketException('No internet connection');
      }
      final list = json.decode(raw) as List<dynamic>;
      return Result.success(
        list
            .map((e) => CollectionItemModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    } catch (e) {
      if (e is SocketException) {
        return Result.failure(RemoteException.networkUnavailable());
      }
      return Result.failure(RemoteException.other(message: e.toString()));
    }
  }

  @override
  Future<Result<Exception, CollectionItemDetailModel>> getItemDetail(
    String id,
  ) async {
    try {
      final raw = await rootBundle.loadString(
        'assets/mock_data/collection_detail.json',
      );

      //simulate no internet connection
      if (DateTime.now().second % 2 == 0) {
        throw SocketException('No internet connection');
      }

      final jsonList = json.decode(raw) as List<dynamic>;
      final jsonData = jsonList.firstWhere(
        (e) => e['id'] == id,
        orElse: () => throw RemoteException.other(message: 'Item not found'),
      );
      return Result.success(CollectionItemDetailModel.fromJson(jsonData));
    } catch (e) {
      if (e is SocketException) {
        return Result.failure(RemoteException.networkUnavailable());
      }
      return Result.failure(RemoteException.other(message: e.toString()));
    }
  }
}
