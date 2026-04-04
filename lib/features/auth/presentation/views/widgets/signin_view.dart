import 'package:cs_ecommerce_app/core/helper_function/sevice_locator.dart';
import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/manager/sign_in/sign_in_cubit.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const String routeName = "signinView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<AuthRepo>()),
      child: Scaffold(body: SafeArea(child: SigninViewBody())),
    );
  }
}
