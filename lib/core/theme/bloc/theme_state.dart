part of 'theme_cubit.dart';

extension ThemeStateX on ThemeState {
  /// if context is provided
  ThemeData toThemeData(BuildContext? context) {
    return map(
      system: (_) {
        if (context != null) {
          final brightness = MediaQuery.of(context).platformBrightness;
          return brightness == Brightness.light
              ? ThemeData.light()
              : ThemeData.dark();
        }
        return ThemeData.fallback();
      },
      light: (_) => ThemeData.light(),
      dark: (_) => ThemeData.dark(),
    );
  }
}

@freezed
sealed class ThemeState with _$ThemeState {
  const factory ThemeState.system() = _System;
  const factory ThemeState.light() = _Light;
  const factory ThemeState.dark() = _Dark;

  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);
}
