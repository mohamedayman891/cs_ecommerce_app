class SignInRequestModelTest {
  final String email;
  final String password;

  SignInRequestModelTest(this.email, this.password);

  // تحويل Object إلى JSON
  Map<String, dynamic> toJson() {
    return {'email': email, 'password': password};
  }
}
