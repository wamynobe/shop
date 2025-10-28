import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whisky_shop/core/model/async_value.dart';
import 'package:whisky_shop/core/routers/routers.gr.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:whisky_shop/features/collection/presentation/bloc/collection_cubit.dart';
import 'package:whisky_shop/core/db/app_database.dart' as db;
import 'package:whisky_shop/core/utils/get_it.dart';
import 'package:whisky_shop/features/collection/data/datasources/collection_local_datasource.dart';
import 'package:whisky_shop/features/collection/data/datasources/collection_remote_datasource.dart';
import 'package:whisky_shop/features/collection/data/repositories/collection_repository_impl.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item.dart';
import 'package:whisky_shop/features/collection/presentation/widgets/bottle_card.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CollectionCubit(
        CollectionRepositoryImpl(
          local: CollectionLocalDataSource(db: getIt.get<db.AppDatabase>()),
          remote: CollectionRemoteDataSource(),
        ),
      )..load(),
      child: const _CollectionBody(),
    );
  }
}

class _CollectionBody extends StatelessWidget {
  const _CollectionBody();
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My collection',
              style: theme.textStyles.headlineLarge?.copyWith(
                color: theme.colors.grey1,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<CollectionCubit, CollectionState>(
                builder: (context, state) {
                  return RefreshIndicator(
                    color: theme.colors.primary,
                    onRefresh: () => context.read<CollectionCubit>().load(),
                    child: Builder(
                      builder: (_) {
                        final width = MediaQuery.of(context).size.width;
                        final data =
                            state.items.whenOrNull(data: (data) => data) ??
                            <CollectionItem>[];
                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: width ~/ 168,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                                childAspectRatio: 168 / 313,
                              ),
                          itemCount: data.length,
                          itemBuilder: (_, i) {
                            return BottleCard(
                              item: data[i],
                              onTap: () {
                                context.router.push(
                                  CollectionDetailRoute(
                                    collectionItem: data[i],
                                  ),
                                );
                              },
                              heroTag: data[i].id,
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
