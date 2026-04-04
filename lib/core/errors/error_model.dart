import 'package:cs_ecommerce_app/core/api/end_ponits.dart';

class ErrorModel {
  final int status;
  final String errorMessage;

  ErrorModel({required this.status, required this.errorMessage});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      status: jsonData[ApiKey.status] ?? 0,
      errorMessage: jsonData[ApiKey.errorMessage] ?? "",
    );
  }
}
