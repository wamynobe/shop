import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whisky_shop/features/auth/presentation/bloc/signin_cubit.dart';
import 'package:whisky_shop/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:whisky_shop/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:whisky_shop/features/auth/presentation/views/signin_view.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignInCubit(
        AuthRepositoryImpl(
          remoteDataSource: const AssetsAuthRemoteDataSource(),
        ),
      ),
      child: const SignInView(),
    );
  }
}
