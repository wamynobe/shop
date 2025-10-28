import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:whisky_shop/core/utils/get_it.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item.dart';
import 'package:whisky_shop/features/collection/presentation/views/collection_detail_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whisky_shop/features/collection/presentation/bloc/collection_detail_cubit.dart';
import 'package:whisky_shop/features/collection/data/repositories/collection_repository_impl.dart';
import 'package:whisky_shop/features/collection/data/datasources/collection_local_datasource.dart';
import 'package:whisky_shop/features/collection/data/datasources/collection_remote_datasource.dart';
import 'package:whisky_shop/core/db/app_database.dart' as db;

@RoutePage()
class CollectionDetailScreen extends StatelessWidget {
  const CollectionDetailScreen({super.key, this.collectionItem});
  final CollectionItem? collectionItem;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CollectionDetailCubit(
        CollectionRepositoryImpl(
          local: CollectionLocalDataSource(db: getIt.get<db.AppDatabase>()),
          remote: const CollectionRemoteDataSource(),
        ),
      )..loadById(collectionItem?.id ?? ''),
      child: CollectionDetailView(collectionItem: collectionItem),
    );
  }
}
