import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/Signup_view.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/congratulations.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/create_new_password.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/forget_password_with_email.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/forget_password_with_phone.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signin_view.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/verification_code_with_email.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/verification_code_with_phone.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/home_view.dart';
import 'package:cs_ecommerce_app/features/on_boardig/presentation/views/on_boarding_view.dart';
import 'package:cs_ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    case ForgetPasswordWithPhone.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgetPasswordWithPhone(),
      );
    case ForgetPasswordWithEmail.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgetPasswordWithEmail(),
      );
    case VerificationCodeWithPhone.routeName:
      return MaterialPageRoute(
        builder: (context) => const VerificationCodeWithPhone(),
      );
    case VerificationCodeWithEmail.routeName:
      return MaterialPageRoute(
        builder: (context) => const VerificationCodeWithEmail(),
      );
    case CreateNewPassword.routeName:
      return MaterialPageRoute(builder: (context) => const CreateNewPassword());
    case Congratulations.routeName:
      return MaterialPageRoute(builder: (context) => const Congratulations());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
