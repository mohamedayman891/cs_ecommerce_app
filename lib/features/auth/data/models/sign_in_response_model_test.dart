class SignInResponseModelTest {
  final String message;
  final String token;
  final User user;

  SignInResponseModelTest({
    required this.message,
    required this.token,
    required this.user,
  });

  factory SignInResponseModelTest.fromJson(Map<String, dynamic> json) {
    return SignInResponseModelTest(
      message: json['message'] ?? '',
      token: json['token'] ?? '',
      user: User.fromJson(json['user'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {'message': message, 'token': token, 'user': user.toJson()};
  }
}

class User {
  final String role;
  final String name;
  final String email;
  final String phone;
  final String? image;

  User({
    required this.role,
    required this.name,
    required this.email,
    required this.phone,
    this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      role: json['role'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'name': name,
      'email': email,
      'phone': phone,
      'image_path': image,
    };
  }
}
