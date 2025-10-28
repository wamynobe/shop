/// This model is used to store the user data in the local storage.
class UserLocalModel {
  const UserLocalModel({
    required this.email,
    required this.name,
    required this.address,
  });

  final String email;
  final String name;
  final String address;

  factory UserLocalModel.fromJson(Map<String, dynamic> json) {
    return UserLocalModel(
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
