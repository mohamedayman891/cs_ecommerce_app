import 'package:cs_ecommerce_app/core/api/end_ponits.dart';

class ErrorModel {
  final bool status;
  final String errorMessage;

  ErrorModel({required this.status, required this.errorMessage});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      status: jsonData[ApiKey.status] ?? false,
      errorMessage: jsonData[ApiKey.errorMessage] ?? "",
    );
  }
}
