import 'package:cs_ecommerce_app/core/helper_function/build_error_bar.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_progress_hud.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/manager/sign_up/sign_up_cubit.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewBlocConsumer extends StatelessWidget {
  const SignupViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          showBar(context, "Success");
          Navigator.pushReplacementNamed(context, HomeView.routeName);
        } else if (state is SignUpFailure) {
          showBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SignUpLoading ? true : false,
          child: SigninViewBody(),
        );
      },
    );
  }
}
