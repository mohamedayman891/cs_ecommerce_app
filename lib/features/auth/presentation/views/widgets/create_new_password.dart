import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/congratulations.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/custom_back_arrow.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/title_passward_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});
  static const String routeName = "CreateNewPassword";

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
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
                        "Create New Password",
                        style: Styles.medium16.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SvgPicture.asset(Assets.imagesCreateNewPassword),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: Column(
                      children: [
                        Text(
                          "New password must be",
                          textAlign: TextAlign.center,
                          style: Styles.medium16.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "different from last password",
                              textAlign: TextAlign.center,
                              style: Styles.medium16.copyWith(
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18),
                  TitlePasswardField(text: "Password"),
                  const SizedBox(height: 5),
                  TitlePasswardField(text: "Confirm Password"),
                  const SizedBox(height: 18),
                  CustomButton(
                    text: "Save Password",
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        Congratulations.routeName,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
