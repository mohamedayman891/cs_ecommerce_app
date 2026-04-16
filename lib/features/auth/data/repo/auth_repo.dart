import 'package:cs_ecommerce_app/core/errors/failure.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_up_response_model.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_in_request_model.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_in_response_model.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_up_request_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, SignInResponseModel>> signin({
    required SignInRequestModel model,
  });
  Future<Either<Failure, SignUpResponseModel>> signUp({
    required SignUpRequestModel model,
  });
  Future<bool> verifyOtp({required String otp, required String contact});
}
