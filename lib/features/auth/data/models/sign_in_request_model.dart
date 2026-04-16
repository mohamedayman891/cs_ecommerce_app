class SignInRequestModel {
  String? email;
  String? password;

  SignInRequestModel(this.email, this.password);

  // تحويل Object إلى JSON
  Map<String, dynamic> toJson() {
    return {'email': email, 'password': password};
  }
}
