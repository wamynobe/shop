import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whisky_shop/features/welcome/presentation/bloc/welcome_cubit.dart';
import 'package:whisky_shop/features/welcome/presentation/views/welcome_view.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WelcomeCubit(),
      child: const WelcomeView(),
    );
  }
}
