class SignUpResponseModel {
  final String message;

  SignUpResponseModel({required this.message});

  // Factory method لتحويل JSON إلى Object
  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    return SignUpResponseModel(message: json['message'] ?? '');
  }

  // Method لتحويل Object إلى JSON
  Map<String, dynamic> toJson() {
    return {'message': message};
  }
}
