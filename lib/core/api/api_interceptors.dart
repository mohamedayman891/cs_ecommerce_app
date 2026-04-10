import 'package:cs_ecommerce_app/core/api/end_ponits.dart';
import 'package:cs_ecommerce_app/core/cache/cache_helper.dart';
import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  final CacheHelper cacheHelper;

  ApiInterceptor(this.cacheHelper);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = cacheHelper.getData(key: ApiKey.token);

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }
}
