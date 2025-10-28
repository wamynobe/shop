import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:whisky_shop/core/model/exception/other_exception.dart';
import 'package:whisky_shop/core/model/result/result.dart';
import 'package:whisky_shop/features/auth/data/datasources/auth_datasource.dart';
import 'package:whisky_shop/features/auth/data/models/user_model.dart';

class AssetsAuthRemoteDataSource implements AuthDataSource {
  const AssetsAuthRemoteDataSource({
    this.assetPath = 'assets/mock_data/credential.json',
  });

  final String assetPath;

  @override
  Future<Result<Exception, UserModel>> loginWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final raw = await rootBundle.loadString(assetPath);
      final map = json.decode(raw) as Map<String, dynamic>;
      final hasValidCredentials =
          email.trim() == (map['email'] as String?)?.trim() &&
          password == (map['password'] as String?)?.trim();
      if (!hasValidCredentials) {
        return const Result.failure(OtherException('Invalid credentials'));
      }
      return Result.success(UserModel.fromJson(map));
    } catch (e) {
      return Result.failure(OtherException(e.toString()));
    }
  }

  @override
  Future<Result<Exception, UserModel>> getUserProfileByEmail(
    String email,
  ) async {
    final raw = await rootBundle.loadString(assetPath);
    final map = json.decode(raw) as Map<String, dynamic>;
    return Result.success(UserModel.fromJson(map));
  }
}
