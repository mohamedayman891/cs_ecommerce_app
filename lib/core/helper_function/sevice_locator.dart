import 'package:cs_ecommerce_app/core/api/api_consumer.dart';
import 'package:cs_ecommerce_app/core/api/dio_consumer.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiConsumer>(DioConsumer(Dio()));
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(getIt.get<ApiConsumer>()));
}
