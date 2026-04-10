import 'package:cs_ecommerce_app/core/api/api_consumer.dart';
import 'package:cs_ecommerce_app/core/api/end_ponits.dart';
import 'package:cs_ecommerce_app/core/cache/cache_helper.dart';
import 'package:cs_ecommerce_app/core/errors/exceptions.dart';
import 'package:cs_ecommerce_app/core/errors/failure.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign-up_response_model_test.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_in_request_model_test.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_in_response_model_test.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_up_request_model_test.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiConsumer apiConsumer;

  AuthRepoImpl(this.apiConsumer);
  @override
  Future<Either<Failure, SignInResponseModelTest>> signin({
    required SignInRequestModelTest model,
  }) async {
    try {
      var response = await apiConsumer.post(
        EndPoint.signIn,
        data: model.toJson(),
      );
      // print(response);
      final user = SignInResponseModelTest.fromJson(response);
      final decodedToken = JwtDecoder.decode(user.token);
      CacheHelper().saveData(key: ApiKey.token, value: user.token);
      CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
      return Right(user);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, SignUpResponseModelTest>> signUp({
    required SignUpRequestModelTest model,
  }) async {
    try {
      var response = await apiConsumer.post(
        EndPoint.signUp,

        data: model.toJson(),
      );
      final user = SignUpResponseModelTest.fromJson(response);
      print(user);
      return Right(user);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  // no implementation
  @override
  Future<bool> verifyOtp({required String otp, required String contact}) async {
    try {
      var response = await apiConsumer.post(
        "/verify-otp",
        data: {"otp": otp, "contact": contact},
      );
      return response;
    } catch (e) {
      throw Exception("failed to verify OTP");
    }
  }
}
