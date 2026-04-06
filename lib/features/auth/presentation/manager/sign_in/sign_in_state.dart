part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {}

class SignInFailure extends SignInState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}
