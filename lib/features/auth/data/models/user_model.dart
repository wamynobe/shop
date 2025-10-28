import 'package:whisky_shop/features/auth/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.email,
    required super.name,
    required super.address,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: (json['email'] as String?)?.trim() ?? '',
      name: (json['name'] as String?)?.trim() ?? '',
      address: (json['address'] as String?)?.trim() ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    'email': email,
    'name': name,
    'address': address,
  };
}
