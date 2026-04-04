import 'package:cs_ecommerce_app/core/helper_function/sevice_locator.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/manager/sign_up/sign_up_cubit.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = "signupView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(getIt.get<AuthRepo>()),
      child: Scaffold(body: SignupViewBody()),
    );
  }
}
