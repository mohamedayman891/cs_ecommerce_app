import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_up_request_model.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  signUp({required SignUpRequestModel model}) async {
    emit(SignUpLoading());
    var result = await authRepo.signUp(model: model);
    result.fold(
      (errMessage) {
        if (!isClosed) {
          emit(SignUpFailure(errMessage: errMessage.message));
        }
      },
      (signInModel) {
        if (!isClosed) {
          emit(SignUpSuccess());
        }
      },
    );
  }
}
