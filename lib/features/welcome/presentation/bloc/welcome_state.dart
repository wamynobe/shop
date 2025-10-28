part of 'welcome_cubit.dart';

@freezed
sealed class WelcomeState with _$WelcomeState {
  const factory WelcomeState({
    @Default(0.0) double backgroundOpacity,
    String? logoAsset,
    @Default(1.0) double logoScale,
    @Default(1.0) double logoOpacity,
    @Default(-120.0) double formBottom,
    @Default(0.0) double formOpacity,
  }) = _WelcomeState;
}
