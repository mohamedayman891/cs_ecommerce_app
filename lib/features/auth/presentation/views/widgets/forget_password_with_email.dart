import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/custom_back_arrow.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/title_text_field.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/verification_code_with_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordWithEmail extends StatefulWidget {
  const ForgetPasswordWithEmail({super.key});
  static const String routeName = "ForgetPasswordWithEmail";

  @override
  State<ForgetPasswordWithEmail> createState() =>
      _ForgetPasswordWithEmailState();
}

class _ForgetPasswordWithEmailState extends State<ForgetPasswordWithEmail> {
  GlobalKey<FormState> formkey = GlobalKey();
  late String email;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formkey,
            autovalidateMode: autovalidateMode,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      CustomBackArrow(),
                      SizedBox(width: 10),
                      Text(
                        "Forgot Password",
                        style: Styles.medium16.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  SvgPicture.asset(Assets.imagesForgotPasswordWithEmail),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Please enter your email address to receive a verification code",
                      textAlign: TextAlign.center,
                      style: Styles.medium16.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TitleTextField(
                    onSaved: (value) {
                      email = value!;
                      // if (value.contains("@")) {
                      //   return;
                      // } else {
                      //   showBar(context, "Enter valid email");
                      // }
                    },
                    text: "Email",
                    hint: "You@gmail.com",
                    prefixIcon: Icon(Icons.email_outlined),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 18),
                  CustomButton(
                    text: "Send Code",
                    onPressed: () {
                      // Navigator.pushReplacementNamed(
                      //   context,
                      //   VerificationCodeWithEmail.routeName,
                      // );
                      // if (formkey.currentState!.validate()) {
                      //   formkey.currentState!.save();
                      //   //cubit
                      // } else {
                      //   autovalidateMode = AutovalidateMode.always;
                      //   setState(() {});
                      // }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
