import 'package:cs_ecommerce_app/features/auth/data/models/sign_in_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<String, SignInModel>> signin({
    required String email,
    required String password,
  });
  Future<Either<String, SignInModel>> signUp({
    required String fullName,
    required String userName,
    required String phone,
    required String email,
    required String password,
    required String confirmPassword,
  });
}
