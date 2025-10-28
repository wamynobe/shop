part of 'auth_cubit.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated(UserLocalModel user) = _Authenticated;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}

extension AuthStateX on AuthState {
  bool get isAuthenticated => this is _Authenticated;
}
