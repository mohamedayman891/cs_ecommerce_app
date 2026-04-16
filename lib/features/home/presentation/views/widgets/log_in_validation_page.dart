import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signin_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/common_simple_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogInValidationPage extends StatelessWidget {
  const LogInValidationPage({super.key});
  static const String routeName = "LogInValidationPage";
  @override
  Widget build(BuildContext context) {
    return CommonSimplePage(
      title: "Checkout",
      image: Assets.imagesLogInValidation,
      text: "You're Not Signed In",
      subText: "Please sign in and enjoy our services and big offers",
      buttonText: "Sign In",
      onPressed: () {
        Navigator.pushReplacementNamed(context, SigninView.routeName);
      },
      isCard: false,
      child: SvgPicture.asset(Assets.imagesUser3Line, width: 40, height: 40),
    );
  }
}
