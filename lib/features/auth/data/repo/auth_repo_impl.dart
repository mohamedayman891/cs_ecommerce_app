import 'package:cs_ecommerce_app/core/api/api_consumer.dart';
import 'package:cs_ecommerce_app/core/api/end_ponits.dart';
import 'package:cs_ecommerce_app/core/errors/exceptions.dart';
import 'package:cs_ecommerce_app/core/errors/failure.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_up_response_model.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_in_request_model.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_in_response_model.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_up_request_model.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiConsumer apiConsumer;

  AuthRepoImpl(this.apiConsumer);
  @override
  Future<Either<Failure, SignInResponseModel>> signin({
    required SignInRequestModel model,
  }) async {
    try {
      var response = await apiConsumer.post(
        EndPoint.signIn,
        data: model.toJson(),
      );
      final token = response['token'];
      apiConsumer.setToken(token);
      // print(response);
      final user = SignInResponseModel.fromJson(response);
      // final decodedToken = JwtDecoder.decode(user.token);
      // CacheHelper().saveData(key: ApiKey.token, value: user.token);
      return Right(user);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, SignUpResponseModel>> signUp({
    required SignUpRequestModel model,
  }) async {
    try {
      var response = await apiConsumer.post(
        EndPoint.signUp,

        data: model.toJson(),
      );
      final token = response['token'];
      apiConsumer.setToken(token);
      final user = SignUpResponseModel.fromJson(response);
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
