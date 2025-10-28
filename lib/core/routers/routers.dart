import 'package:auto_route/auto_route.dart';
import 'package:whisky_shop/core/routers/routers.gr.dart';
import 'package:whisky_shop/core/utils/get_it.dart';
import 'package:whisky_shop/core/auth/bloc/auth_cubit.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes {
    final authCubit = getIt.get<AuthCubit>();
    final isAuthenticated = authCubit.state.isAuthenticated;
    final routes = [
      if (!isAuthenticated) AutoRoute(page: WelcomeRoute.page, initial: true),
      AutoRoute(page: SignInRoute.page),
      AutoRoute(page: HomeRoute.page, initial: isAuthenticated),
      AutoRoute(page: CollectionDetailRoute.page),
    ];

    return routes;
  }

  @override
  List<AutoRouteGuard> get guards => [
    //TODO: add auth guard
  ];
}
