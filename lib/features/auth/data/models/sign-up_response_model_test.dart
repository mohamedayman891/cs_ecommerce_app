/*
{
    "message": "User Registered successfully",
    "status": true
}
*/
class SignUpResponseModelTest {
  final String message;

  SignUpResponseModelTest({required this.message});

  // Factory method لتحويل JSON إلى Object
  factory SignUpResponseModelTest.fromJson(Map<String, dynamic> json) {
    return SignUpResponseModelTest(message: json['message'] ?? '');
  }

  // Method لتحويل Object إلى JSON
  Map<String, dynamic> toJson() {
    return {'message': message};
  }
}
