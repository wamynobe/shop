import 'package:flutter/material.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whisky_shop/core/model/async_value.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item_detail.dart';
import 'package:whisky_shop/features/collection/presentation/bloc/collection_detail_cubit.dart';
import 'package:whisky_shop/features/collection/presentation/widgets/details_view.dart';
import 'package:whisky_shop/features/collection/presentation/widgets/bottle_stretchy_image.dart';
import 'package:whisky_shop/features/collection/presentation/widgets/provider_header.dart';
import 'package:whisky_shop/features/collection/presentation/widgets/sticky_add_to_collection_button.dart';
import 'package:whisky_shop/features/collection/presentation/widgets/segmented_tab_bar.dart';
import 'package:whisky_shop/features/collection/presentation/widgets/history_timeline_view.dart';
import 'package:whisky_shop/features/collection/presentation/widgets/tasting_notes_view.dart';
import 'package:whisky_shop/gen/assets.gen.dart';

class CollectionDetailView extends StatelessWidget {
  const CollectionDetailView({super.key, this.collectionItem});
  final CollectionItem? collectionItem;
  @override
  Widget build(BuildContext context) {
    final tabs = const [
      Tab(text: 'Details'),
      Tab(text: 'Tasting notes'),
      Tab(text: 'History'),
    ];

    final theme = context.theme;
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: theme.colors.black2,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  Assets.splash.splashBackground.path,
                  fit: BoxFit.cover,
                ),
              ),
              BlocBuilder<CollectionDetailCubit, CollectionDetailState>(
                buildWhen: (previous, current) =>
                    previous.detail != current.detail,
                builder: (context, state) {
                  return state.detail.when(
                    initial: () => const SizedBox.shrink(),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    failure: (_) => const Center(child: Text('Failed to load')),
                    data: (_) => const SizedBox.shrink(),
                  );
                },
              ),

              NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverPersistentHeader(
                    pinned: false,
                    floating: true,
                    delegate: ProviderHeader(
                      maxExtentHeight: 120,
                      minExtentHeight: 120,
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: false,
                    floating: false,
                    delegate: BottleStretchyHeader(
                      imageUrl: collectionItem?.imageUrl ?? '',
                      heroTag: collectionItem?.id ?? '',
                      maxExtentHeight: 420,
                      minExtentHeight: 220,
                    ),
                  ),

                  BlocSelector<
                    CollectionDetailCubit,
                    CollectionDetailState,
                    CollectionItemDetail?
                  >(
                    selector: (state) {
                      return state.detail.whenOrNull(data: (data) => data);
                    },
                    builder: (context, collectionItemDetail) {
                      final bornYear = collectionItemDetail != null
                          ? collectionItemDetail.age
                          : 0;
                      final age = DateTime.now().year - bornYear;
                      return SliverToBoxAdapter(
                        child: Container(
                          decoration: BoxDecoration(color: theme.colors.black1),
                          margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Bottle 135/184',
                                style: theme.textStyles.bodySmall?.copyWith(
                                  color: theme.colors.grey2,
                                ),
                              ),
                              const SizedBox(height: 8),
                              RichText(
                                text: TextSpan(
                                  style: theme.textStyles.headlineLarge
                                      ?.copyWith(color: theme.colors.grey1),
                                  children: [
                                    TextSpan(
                                      text: '${collectionItemDetail?.name} ',
                                    ),
                                    TextSpan(
                                      text: '$age Years Old',
                                      style: theme.textStyles.headlineLarge
                                          ?.copyWith(
                                            color: theme.colors.secondary,
                                          ),
                                    ),
                                    TextSpan(
                                      text: ' #${collectionItemDetail?.number}',
                                    ),
                                  ],
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  SliverAppBar(
                    pinned: true,
                    surfaceTintColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    toolbarHeight: 0,
                    bottom: SegmentedTabBar(tabs: tabs),
                  ),
                ],
                body: Container(
                  color: theme.colors.black1,
                  margin: const EdgeInsets.fromLTRB(16, 0, 16, 80),
                  child:
                      BlocBuilder<CollectionDetailCubit, CollectionDetailState>(
                        buildWhen: (previous, current) =>
                            previous.detail != current.detail,
                        builder: (context, state) {
                          final detail = state.detail.whenOrNull(
                            data: (d) => d,
                          );
                          return TabBarView(
                            children:
                                [
                                  DetailsView(detail: detail),
                                  TastingNotesView(
                                    groups:
                                        detail?.tastingNoteGroups ?? const [],
                                    userGroups:
                                        detail?.userTastingNoteGroups ??
                                        const [],
                                  ),
                                  HistoryTimelineView(
                                    histories: detail?.histories ?? const [],
                                  ),
                                ].map((view) {
                                  return ScrollConfiguration(
                                    behavior: const ScrollBehavior().copyWith(
                                      overscroll: false,
                                    ),
                                    child: CustomScrollView(
                                      slivers: [
                                        SliverPadding(
                                          padding: const EdgeInsets.fromLTRB(
                                            16,
                                            16,
                                            16,
                                            23,
                                          ),
                                          sliver: SliverList(
                                            delegate: SliverChildListDelegate([
                                              view,
                                            ]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                          );
                        },
                      ),
                ),
              ),
              StickyAddToCollectionButton(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
