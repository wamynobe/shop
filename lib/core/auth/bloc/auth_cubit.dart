import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:whisky_shop/core/model/user/user_local_model.dart';
import 'package:whisky_shop/features/auth/domain/entities/user.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';
part 'auth_cubit.g.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit() : super(const AuthState.unauthenticated());

  void setAuthenticated(User user) {
    log('setAuthenticated: ${user.email} ${user.name} ${user.address}');
    emit(
      AuthState.authenticated(
        UserLocalModel(
          email: user.email,
          name: user.name,
          address: user.address,
        ),
      ),
    );
  }

  void signOut() {
    emit(const AuthState.unauthenticated());
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) => AuthState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();
}
