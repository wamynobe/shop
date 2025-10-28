import 'package:whisky_shop/features/auth/domain/entities/user.dart';
import 'package:whisky_shop/core/model/result/result.dart';

abstract class AuthRepository {
  Future<Result<Exception, User>> signIn({
    required String email,
    required String password,
  });
}
