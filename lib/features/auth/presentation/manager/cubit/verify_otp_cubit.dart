import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'verify_otp_state.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  VerifyOtpCubit(this.authRepo) : super(VerifyOtpInitial());
  final AuthRepo authRepo;
  Future<void> verifyOtp({required String otp, required String contact}) async {
    emit(VerifyOtpLoading());
    try {
      bool isValid = await authRepo.verifyOtp(otp: otp, contact: contact);

      if (isValid) {
        emit(VerifyOtpSuccess());
      } else {
        emit(VerifyOtpFailure(errMessage: "OTP inCorrect"));
      }
    } catch (e) {
      emit(VerifyOtpFailure(errMessage: e.toString()));
    }
  }
}
