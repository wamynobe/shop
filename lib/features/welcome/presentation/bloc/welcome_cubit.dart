import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'welcome_state.dart';
part 'welcome_cubit.freezed.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(const WelcomeState());

  Future<void> hydrateSplash({
    required double screenWidth,
    required String logoAsset,
  }) async {
    final splashWidth = 140.0; // match native logo width
    final scale = splashWidth / screenWidth;
    emit(
      state.copyWith(
        logoAsset: logoAsset,
        logoScale: scale,
        backgroundOpacity: 1.0,
      ),
    );
  }

  Future<void> hideLogo() async {
    emit(state.copyWith(logoOpacity: 0.0));
  }

  Future<void> showForm() async {
    emit(state.copyWith(formOpacity: 1.0, formBottom: 0.0));
  }
}
