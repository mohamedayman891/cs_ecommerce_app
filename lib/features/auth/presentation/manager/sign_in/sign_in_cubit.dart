import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_in_request_model.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;
  signIn({required String email, required String password}) async {
    emit(SignInLoading());
    var result = await authRepo.signin(
      model: SignInRequestModel(email, password),
    );
    result.fold(
      (errMessage) {
        if (!isClosed) {
          emit(SignInFailure(errMessage: errMessage.message));
        }
      },
      (signInModel) {
        if (!isClosed) {
          emit(SignInSuccess());
        }
      },
    );
  }
}
