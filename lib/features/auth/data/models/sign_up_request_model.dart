class SignUpRequestModel {
  String name;
  String email;
  String password;
  String confirmPassword;
  String phone;

  SignUpRequestModel({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.phone,
  });

  // تحويل Object إلى JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': confirmPassword,
      'confirmPassword': confirmPassword,
      'phone': phone,
    };
  }

  // إنشاء Object من JSON
  // factory SignUpRequestModel.fromJson(Map<String, dynamic> json) {
  //   return SignUpRequestModel(
  //     name: json['name'],
  //     email: json['email'],
  //     password: json['password'],
  //     confirmPassword: json['confirmPassword'],
  //     phone: json['phone'],
  //   );
  // }
}
