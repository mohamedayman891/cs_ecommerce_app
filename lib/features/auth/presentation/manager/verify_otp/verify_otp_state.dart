part of 'verify_otp_cubit.dart';

@immutable
sealed class VerifyOtpState {}

class VerifyOtpInitial extends VerifyOtpState {}

class VerifyOtpLoading extends VerifyOtpState {}

class VerifyOtpSuccess extends VerifyOtpState {}

class VerifyOtpFailure extends VerifyOtpState {
  final String errMessage;

  VerifyOtpFailure({required this.errMessage});
}
