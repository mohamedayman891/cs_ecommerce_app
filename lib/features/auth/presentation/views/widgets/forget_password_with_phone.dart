import 'package:cs_ecommerce_app/core/helper_function/build_error_bar.dart';
import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/custom_back_arrow.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/forget_password_with_email.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/title_text_field.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/verification_code_with_phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordWithPhone extends StatefulWidget {
  const ForgetPasswordWithPhone({super.key});
  static const String routeName = "ForgetPasswordWithPhone";

  @override
  State<ForgetPasswordWithPhone> createState() =>
      _ForgetPasswordWithPhoneState();
}

class _ForgetPasswordWithPhoneState extends State<ForgetPasswordWithPhone> {
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
                        "Forgot Password",
                        style: Styles.medium16(
                          context,
                        ).copyWith(color: AppColors.primaryColor),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  SvgPicture.asset(Assets.imagesForgotPasswordWithPhone),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Please enter your phone number to receive a verification code",
                      textAlign: TextAlign.center,
                      style: Styles.medium16(
                        context,
                      ).copyWith(color: AppColors.primaryColor),
                    ),
                  ),
                  SizedBox(height: 10),
                  TitleTextField(
                    onSaved: (value) {
                      phone = value!;
                      if (RegExp(r'^[0-9]+$').hasMatch(value)) {
                        return;
                      } else {
                        showBar(context, "Enter valid phone");
                      }
                    },
                    text: "Phone Number",
                    hint: "+20 1501142409 ",
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          Icons.phone_iphone,
                          color: AppColors.primaryColor,
                          size: 24,
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.primaryColor,
                        ),
                        // SizedBox(width: 5),
                        // Text(
                        //   "+20 ",
                        //   style: Styles.regular12.copyWith(
                        //     color: AppColors.primaryColor,
                        //   ),
                        // ),
                      ],
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 18),
                  CustomButton(
                    text: "Send Code",
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        VerificationCodeWithPhone.routeName,
                      );
                      //   if (formkey.currentState!.validate()) {
                      //     formkey.currentState!.save();
                      //     //cubit
                      //     Navigator.pushReplacementNamed(
                      //       context,
                      //       VerificationCodeWithPhone.routeName,
                      //     );
                      //   } else {
                      //     autovalidateMode = AutovalidateMode.always;
                      //     setState(() {});
                      //   }
                    },
                  ),
                  const SizedBox(height: 18),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        ForgetPasswordWithEmail.routeName,
                      );
                    },
                    child: Text(
                      "Try Another Way",
                      style: Styles.semiBold16(context),
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
