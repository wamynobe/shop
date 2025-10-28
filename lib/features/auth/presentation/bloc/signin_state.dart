part of 'signin_cubit.dart';

@freezed
sealed class SignInState with _$SignInState {
  const factory SignInState({required AsyncValue<User> user}) = _SignInState;
}
