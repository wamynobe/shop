import 'package:whisky_shop/core/model/result/result.dart';
import 'package:whisky_shop/features/auth/data/models/user_model.dart';

abstract class AuthDataSource {
  Future<Result<Exception, UserModel>> loginWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Result<Exception, UserModel>> getUserProfileByEmail(String email);
}
