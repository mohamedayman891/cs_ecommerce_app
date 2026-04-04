import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  signUp({
    required String fullName,
    required String userName,
    required String phone,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    emit(SignUpLoading());
    var result = await authRepo.signUp(
      fullName: fullName,
      userName: userName,
      phone: phone,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
    result.fold(
      (errMessage) {
        emit(SignUpFailure(errMessage: errMessage));
      },
      (signUpModel) {
        emit(SignUpSuccess(message: signUpModel.message));
      },
    );
  }
}
