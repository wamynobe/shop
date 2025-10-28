import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:whisky_shop/core/auth/bloc/auth_cubit.dart';
import 'package:whisky_shop/core/model/async_value.dart';
import 'package:whisky_shop/core/routers/routers.gr.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:whisky_shop/core/utils/function.dart';
import 'package:whisky_shop/core/widgets/dialog.dart';
import 'package:whisky_shop/features/auth/presentation/widgets/signin_form.dart';
import 'package:whisky_shop/core/widgets/dismiss_keyboard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whisky_shop/features/auth/presentation/bloc/signin_cubit.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  void _onSignInStateChanged(BuildContext context, SignInState state) {
    state.user.when(
      initial: () => false,
      data: (user) async {
        final router = context.router;
        final authCubit = context.read<AuthCubit>();
        authCubit.setAuthenticated(user);
        await router.maybePop();
        router.replaceAll([const HomeRoute()]);
      },
      failure: (error) async {
        await context.router.maybePop();
        if (context.mounted) {
          showErrorDialog(context, error);
        }
      },
      loading: () => showLoadingDialog(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      backgroundColor: theme.colors.black2,
      appBar: AppBar(
        backgroundColor: theme.colors.black2,
        leading: IconButton(
          iconSize: 24,
          padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
          onPressed: () => Navigator.of(context).maybePop(),
          icon: Icon(Icons.arrow_back, color: theme.colors.grey1),
        ),
      ),
      body: BlocListener<SignInCubit, SignInState>(
        listener: _onSignInStateChanged,
        child: DismissKeyboard(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Text(
                    'Sign in',
                    style: theme.textStyles.headlineLarge?.copyWith(
                      color: theme.colors.grey1,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: SignInForm(
                          onContinue: (email, password) {
                            FunctionUtils.unfocus(context);
                            context.read<SignInCubit>().signIn(
                              email: email,
                              password: password,
                            );
                          },
                          onRecover: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
