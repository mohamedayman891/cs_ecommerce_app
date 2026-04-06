import 'package:cs_ecommerce_app/core/helper_function/build_error_bar.dart';
import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:cs_ecommerce_app/features/auth/data/models/sign_up_request_model_test.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/manager/sign_up/sign_up_cubit.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/continue_with_social.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/custom_back_arrow.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/title_passward_field.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/title_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  // String? fullName, userName, phone, email, password;
  late SignUpRequestModelTest model = SignUpRequestModelTest(
    name: "",
    phone: "",
    email: "",
    password: "",
    confirmPassword: '',
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackArrow(),
                  Center(
                    child: Image.asset(
                      Assets.imagesLogoLogIn,
                      width: 180,
                      height: 120,
                    ),
                  ),
                ],
              ),
              TitleTextField(
                onSaved: (value) {
                  model.name = value!;
                },
                text: "Your Name",
                hint: "Full Name",
                prefixIcon: Image.asset(Assets.imagesFullName),
                keyboardType: TextInputType.text,
              ),
              TitleTextField(
                onSaved: (value) {
                  model.name = value!;
                },
                text: "Username",
                hint: "Username",
                prefixIcon: Image.asset(Assets.imagesUserIcon),
                keyboardType: TextInputType.text,
              ),
              TitleTextField(
                onSaved: (value) {
                  model.phone = value!;
                  // if (RegExp(r'^[0-9]+$').hasMatch(value)) {
                  //   return;
                  // } else {
                  //   showBar(context, "Enter valid phone");
                  // }
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
              TitleTextField(
                onSaved: (value) {
                  model.email = value!;
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
              TitlePasswardField(
                onSaved: (value) {
                  model.password = value!;
                },
                text: "Passsword",
              ),
              SizedBox(height: 3),
              TitlePasswardField(
                onSaved: (value) {
                  model.confirmPassword = value!;
                  if (model.confirmPassword != model.password) {
                    showBar(context, "confirmPassword is inValid");
                  }
                },
                text: "Confirm Passsword",
              ),
              const SizedBox(height: 12),
              CustomButton(
                text: "Sign Up",
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    // if (model.name == null || model.name.isEmpty) {
                    //   print("Enter your name");
                    //   return;
                    // }
                    formkey.currentState!.save();
                    print(model.name);
                    context.read<SignUpCubit>().signUp(model: model);
                    // Navigator.pushReplacementNamed(context, HomeView.routeName);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              const SizedBox(height: 7),
              Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: ContinueWithSocial(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
