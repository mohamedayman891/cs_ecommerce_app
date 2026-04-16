import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/custom_back_arrow.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signin_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});
  static const String routeName = "Congratulations";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 8),
                Row(children: [CustomBackArrow()]),
                SizedBox(height: 20),
                SvgPicture.asset(Assets.imagesCongratulations),
                SizedBox(height: 10),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55),
                      child: Text(
                        "Congratulations",
                        textAlign: TextAlign.center,
                        style: Styles.medium24(
                          context,
                        ).copyWith(color: AppColors.primaryColor),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "You have updated the password. please login again with your latest password",
                        textAlign: TextAlign.center,
                        style: Styles.medium16(
                          context,
                        ).copyWith(color: AppColors.primaryColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                CustomButton(
                  text: "Log In",
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      SigninView.routeName,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
