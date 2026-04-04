import 'dart:developer';
import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/create_new_password.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/custom_back_arrow.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/otp_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerificationCodeWithPhone extends StatefulWidget {
  const VerificationCodeWithPhone({super.key});
  static const String routeName = "VerificationCodeWithPhone";

  @override
  State<VerificationCodeWithPhone> createState() =>
      _VerificationCodeWithPhoneState();
}

class _VerificationCodeWithPhoneState extends State<VerificationCodeWithPhone> {
  GlobalKey<FormState> formkey = GlobalKey();
  late String phone;
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
                        "Verification Code",
                        style: Styles.medium16.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SvgPicture.asset(Assets.imagesVerificationCodeWithPhone),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: Column(
                      children: [
                        Text(
                          "Please enter the 4 digit code",
                          textAlign: TextAlign.center,
                          style: Styles.medium16.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "sent to: ",
                              textAlign: TextAlign.center,
                              style: Styles.medium16.copyWith(
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Text(
                              "+20 1501142409 ",
                              textAlign: TextAlign.center,
                              style: Styles.medium16.copyWith(
                                color: AppColors.secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  OTPFields(
                    onCompleted: (otp) {
                      log("OTP entered: $otp");
                      //cubit
                    },
                  ),
                  const SizedBox(height: 18),
                  CustomButton(
                    text: "Verify Code",
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        CreateNewPassword.routeName,
                      );
                      // if (formkey.currentState!.validate()) {
                      //   formkey.currentState!.save();
                      //   //cubit
                      // } else {
                      //   autovalidateMode = AutovalidateMode.always;
                      //   setState(() {});
                      // }
                    },
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "00:46",
                    style: Styles.semiBold16.copyWith(
                      color: AppColors.navyColor,
                    ),
                  ),
                  const SizedBox(height: 18),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Resend Code",
                      style: Styles.semiBold16.copyWith(
                        color: AppColors.navyColor,
                      ),
                    ),
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
