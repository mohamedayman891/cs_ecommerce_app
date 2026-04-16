import 'package:cs_ecommerce_app/core/api/api_consumer.dart';
import 'package:cs_ecommerce_app/core/api/end_ponits.dart';
import 'package:cs_ecommerce_app/core/errors/exceptions.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  String? token; // 👈 هنا

  DioConsumer(this.dio) {
    dio.options.baseUrl = EndPoint.baseUrl;

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
      ),
    );
  }

  @override
  void setToken(String newToken) {
    token = newToken;
  }

  @override
  Future delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: isFromData ? FormData.fromMap(data ?? {}) : data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: isFromData ? FormData.fromMap(data ?? {}) : data,
        options: Options(headers: {"Content-Type": "application/json"}),
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future post(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: isFromData ? FormData.fromMap(data ?? {}) : data,
        queryParameters: queryParameters,
        options: isFromData
            ? null
            : Options(headers: {"Content-Type": "application/json"}),
      );

      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }
}
