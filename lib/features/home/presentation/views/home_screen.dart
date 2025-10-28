import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whisky_shop/features/home/presentation/views/home_view.dart';
import 'package:whisky_shop/features/home/presentation/bloc/home_cubit.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => HomeCubit(), child: const HomeView());
  }
}
