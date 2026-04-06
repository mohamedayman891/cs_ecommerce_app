import 'package:cs_ecommerce_app/core/errors/failure.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign-up_response_model_test.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_in_request_model_test.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_in_response_model_test.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_up_request_model_test.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, SignInResponseModelTest>> signin({
    required SignInRequestModelTest model,
  });
  Future<Either<Failure, SignUpResponseModelTest>> signUp({
    required SignUpRequestModelTest model,
  });
  Future<bool> verifyOtp({required String otp, required String contact});
}
