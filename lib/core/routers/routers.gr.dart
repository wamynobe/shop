// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:whisky_shop/features/auth/presentation/views/signin_screen.dart'
    as _i3;
import 'package:whisky_shop/features/collection/domain/entities/collection_item.dart'
    as _i7;
import 'package:whisky_shop/features/collection/presentation/views/collection_detail_screen.dart'
    as _i1;
import 'package:whisky_shop/features/home/presentation/views/home_screen.dart'
    as _i2;
import 'package:whisky_shop/features/welcome/presentation/views/welcome_screen.dart'
    as _i4;

/// generated route for
/// [_i1.CollectionDetailScreen]
class CollectionDetailRoute
    extends _i5.PageRouteInfo<CollectionDetailRouteArgs> {
  CollectionDetailRoute({
    _i6.Key? key,
    _i7.CollectionItem? collectionItem,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         CollectionDetailRoute.name,
         args: CollectionDetailRouteArgs(
           key: key,
           collectionItem: collectionItem,
         ),
         initialChildren: children,
       );

  static const String name = 'CollectionDetailRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CollectionDetailRouteArgs>(
        orElse: () => const CollectionDetailRouteArgs(),
      );
      return _i1.CollectionDetailScreen(
        key: args.key,
        collectionItem: args.collectionItem,
      );
    },
  );
}

class CollectionDetailRouteArgs {
  const CollectionDetailRouteArgs({this.key, this.collectionItem});

  final _i6.Key? key;

  final _i7.CollectionItem? collectionItem;

  @override
  String toString() {
    return 'CollectionDetailRouteArgs{key: $key, collectionItem: $collectionItem}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CollectionDetailRouteArgs) return false;
    return key == other.key && collectionItem == other.collectionItem;
  }

  @override
  int get hashCode => key.hashCode ^ collectionItem.hashCode;
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.SignInScreen]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute({List<_i5.PageRouteInfo>? children})
    : super(SignInRoute.name, initialChildren: children);

  static const String name = 'SignInRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.SignInScreen();
    },
  );
}

/// generated route for
/// [_i4.WelcomeScreen]
class WelcomeRoute extends _i5.PageRouteInfo<void> {
  const WelcomeRoute({List<_i5.PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.WelcomeScreen();
    },
  );
}
