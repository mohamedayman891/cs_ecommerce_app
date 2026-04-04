import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;
  signIn({required String email, required String password}) async {
    emit(SignInLoading());
    var result = await authRepo.signin(email: email, password: password);
    result.fold(
      (errMessage) {
        emit(SignInFailure(errMessage: errMessage));
      },
      (signInModel) {
        emit(SignInSuccess(message: signInModel.message));
      },
    );
  }
}
