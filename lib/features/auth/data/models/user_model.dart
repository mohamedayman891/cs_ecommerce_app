class UserModel {
  final String fullName;
  final String userName;
  final String email;
  final String phone;
  final String password;
  final String confirmPassword;

  UserModel({
    required this.fullName,
    required this.userName,
    required this.email,
    required this.phone,
    required this.password,
    required this.confirmPassword,
  });

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      email: jsonData['user'][ApiKey.email],
      phone: jsonData['user'][ApiKey.phone],
      fullName: '',
      userName: '',
      password: '',
      confirmPassword: '',
    );
  }
}
