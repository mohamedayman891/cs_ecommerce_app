import 'package:cs_ecommerce_app/core/api/api_consumer.dart';
import 'package:cs_ecommerce_app/core/api/end_ponits.dart';
import 'package:cs_ecommerce_app/core/cache/cache_helper.dart';
import 'package:cs_ecommerce_app/core/errors/exceptions.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_in_model.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiConsumer apiConsumer;

  AuthRepoImpl(this.apiConsumer);
  @override
  Future<Either<String, SignInModel>> signin({
    required String email,
    required String password,
  }) async {
    try {
      var response = await apiConsumer.post(
        EndPoint.signIn,
        data: {ApiKey.email: email, ApiKey.password: password},
      );
      final user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user.token);
      CacheHelper().saveData(key: ApiKey.token, value: user.token);
      CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
      return Right(user);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }

  @override
  Future<Either<String, SignInModel>> signUp({
    required String fullName,
    required String userName,
    required String phone,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      var response = await apiConsumer.post(
        EndPoint.signUp,
        isFromData: true,
        data: {
          ApiKey.fillName: fullName,
          ApiKey.userName: userName,
          ApiKey.phone: phone,
          ApiKey.email: email,
          ApiKey.password: password,
          ApiKey.confirmPassword: confirmPassword,
        },
      );
      final user = SignInModel.fromJson(response);
      return Right(user);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }
}
