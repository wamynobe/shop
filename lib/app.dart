import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whisky_shop/core/di/di.dart';
import 'package:whisky_shop/core/routers/routers.dart';
import 'package:whisky_shop/core/theme/bloc/theme_cubit.dart';
import 'package:whisky_shop/core/utils/get_it.dart';
import 'package:whisky_shop/core/auth/bloc/auth_cubit.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  @override
  void dispose() {
    release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    const designSize = Size(375, 812);
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt.get<AuthCubit>()),
        // BlocProvider.value(value: getIt.get<LanguageCubit>()),
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: ScreenUtilInit(
        designSize: designSize,
        minTextAdapt: true,
        splitScreenMode: true,
        ensureScreenSize: true,
        enableScaleWH: () => true,
        builder: (builderContext, __) {
          return MaterialApp.router(
            title: 'Whisky Shop',
            theme: builderContext.watch<ThemeCubit>().state.toThemeData(
              builderContext,
            ),
            debugShowCheckedModeBanner: false,
            // localizationsDelegates: AppLocalizations.localizationsDelegates,
            // locale: builderContext.watch<LanguageCubit>().state.toLocale(),
            // supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: router.config(),
          );
        },
      ),
    );
  }
}
