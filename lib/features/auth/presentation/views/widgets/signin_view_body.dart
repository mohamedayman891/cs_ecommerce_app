import 'package:cs_ecommerce_app/core/helper_function/build_error_bar.dart';
import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:cs_ecommerce_app/core/widgets/password_field.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/manager/sign_in/sign_in_cubit.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/Signup_view.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/continue_with_social.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/custom_skip.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/forget_password_with_phone.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  late bool isTermedAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              CustomSkip(),
              const SizedBox(height: 15),
              Image.asset(Assets.imagesLogoLogIn),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hint: 'Username or Email',
                prefixIcon: Icon(Icons.email_outlined),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              PasswordField(
                hint: "Password",
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TermsAndCondition(
                      onChanged: (value) {
                        isTermedAccepted = value;
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          ForgetPasswordWithPhone.routeName,
                        );
                      },
                      child: Text("Forgot Password?", style: Styles.medium12),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Log In",
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    if (isTermedAccepted) {
                      context.read<SignInCubit>().signIn(
                        email: email,
                        password: password,
                      );
                    } else {
                      showBar(context, 'Remember Me');
                    }
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              const SizedBox(height: 16),
              ContinueWithSocial(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Are you new in Marketi ", style: Styles.regular12),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        SignupView.routeName,
                      );
                    },
                    child: Text(
                      "register?",
                      style: Styles.regular12.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
