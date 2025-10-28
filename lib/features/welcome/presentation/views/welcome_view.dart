import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:whisky_shop/core/routers/routers.gr.dart';
import 'package:whisky_shop/core/theme/configs/custom_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whisky_shop/features/welcome/presentation/bloc/welcome_cubit.dart';
import 'package:whisky_shop/features/welcome/presentation/widgets/welcome_form.dart';
import 'package:whisky_shop/gen/assets.gen.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _hydrate();
    });
  }

  Future<void> _hydrate() async {
    final logo = Assets.splash.splash.path;
    final screenWidth = MediaQuery.of(context).size.width;
    final welcomeCubit = context.read<WelcomeCubit>();
    await precacheImage(AssetImage(logo), context);
    FlutterNativeSplash.remove();
    welcomeCubit.hydrateSplash(screenWidth: screenWidth, logoAsset: logo);
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      backgroundColor: theme.colors.black2,
      body: BlocBuilder<WelcomeCubit, WelcomeState>(
        builder: (context, state) {
          return Container(
            constraints: const BoxConstraints.expand(),
            child: Stack(
              children: [
                Positioned.fill(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeOut,
                    opacity: state.backgroundOpacity,
                    onEnd: () {
                      context.read<WelcomeCubit>().hideLogo();
                    },
                    child: Image.asset(
                      Assets.splash.splashBackground.path,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOut,
                      opacity: state.logoOpacity,
                      onEnd: () {
                        context.read<WelcomeCubit>().showForm();
                      },
                      child: Transform.scale(
                        scale: state.logoScale,
                        child: state.logoAsset == null
                            ? const SizedBox.shrink()
                            : Image.asset(state.logoAsset!, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeOut,
                  bottom: state.formBottom,
                  left: 0,
                  right: 0,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeOut,
                    opacity: state.formOpacity,
                    child: WelcomeForm(
                      onScanPressed: () {
                        // TODO: Implement scan logic
                      },
                      onSignInPressed: () {
                        context.router.push(const SignInRoute());
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
