import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whisky_shop/features/auth/domain/entities/user.dart';
import 'package:whisky_shop/features/auth/domain/repositories/auth_repository.dart';
import 'package:whisky_shop/core/model/async_value.dart';
import 'package:whisky_shop/core/model/result/result.dart';

part 'signin_state.dart';
part 'signin_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this._authRepository)
    : super(const SignInState(user: AsyncValue.initial()));

  final AuthRepository _authRepository;

  Future<void> signIn({required String email, required String password}) async {
    emit(state.copyWith(user: const AsyncValue.loading()));
    try {
      await Future<void>.delayed(const Duration(milliseconds: 300));
      final Result<Exception, User> res = await _authRepository.signIn(
        email: email,
        password: password,
      );
      res.when(
        failure: (e) => emit(state.copyWith(user: AsyncValue.failure(e))),
        success: (user) => emit(state.copyWith(user: AsyncValue.data(user))),
      );
    } catch (e) {
      if (e is Exception) {
        emit(state.copyWith(user: AsyncValue.failure(e)));
      } else {
        emit(state.copyWith(user: AsyncValue.failure(Exception(e.toString()))));
      }
    }
  }
}
