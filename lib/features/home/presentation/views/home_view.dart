import 'package:flutter/material.dart' hide NavigationBar;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:whisky_shop/features/collection/presentation/views/collection_view.dart';

import 'package:whisky_shop/features/home/presentation/widgets/navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whisky_shop/features/home/presentation/bloc/home_cubit.dart';
import 'package:whisky_shop/features/scan/presentation/views/scan_view.dart';
import 'package:whisky_shop/features/setting/presentation/views/setting_view.dart';
import 'package:whisky_shop/features/shop/presentation/views/setting_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.theme;
    final index = context.select((HomeCubit c) => c.state.index);
    return Scaffold(
      backgroundColor: t.colors.black2,
      body: IndexedStack(
        index: index,
        children: const [
          ScanView(),
          CollectionView(),
          ShopView(),
          SettingView(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        index: index,
        onTap: (i) => context.read<HomeCubit>().setIndex(i),
      ),
    );
  }
}
