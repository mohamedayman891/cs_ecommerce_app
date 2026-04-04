import 'package:cs_ecommerce_app/core/helper_function/build_error_bar.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_progress_hud.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/manager/sign_in/sign_in_cubit.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninViewBlocConsumer extends StatelessWidget {
  const SigninViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          Navigator.pushNamed(context, HomeView.routeName);
        }
        if (state is SignInFailure) {
          showBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SignInLoading ? true : false,
          child: SigninViewBody(),
        );
      },
    );
  }
}
