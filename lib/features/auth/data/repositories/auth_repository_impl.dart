import 'package:whisky_shop/features/auth/data/datasources/auth_datasource.dart';
import 'package:whisky_shop/features/auth/data/models/user_model.dart';
import 'package:whisky_shop/features/auth/domain/repositories/auth_repository.dart';
import 'package:whisky_shop/core/model/result/result.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required this.remoteDataSource});

  final AuthDataSource remoteDataSource;

  @override
  Future<Result<Exception, UserModel>> signIn({
    required String email,
    required String password,
  }) async {
    final result = await remoteDataSource.loginWithEmailAndPassword(
      email,
      password,
    );
    return result;
  }
}
