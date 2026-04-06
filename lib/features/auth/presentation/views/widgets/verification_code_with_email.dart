// import 'dart:developer';
// import 'package:cs_ecommerce_app/core/helper_function/build_error_bar.dart';
// import 'package:cs_ecommerce_app/core/helper_function/sevice_locator.dart';
// import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
// import 'package:cs_ecommerce_app/core/utils/app_images.dart';
// import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
// import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
// import 'package:cs_ecommerce_app/features/auth/data/repo/auth_repo.dart';
// import 'package:cs_ecommerce_app/features/auth/presentation/manager/verify_otp/verify_otp_cubit.dart';
// import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/create_new_password.dart';
// import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/custom_back_arrow.dart';
// import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/otp_fields.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class VerificationCodeWithEmail extends StatefulWidget {
//   const VerificationCodeWithEmail({super.key});
//   static const String routeName = "VerificationCodeWithEmail";

//   @override
//   State<VerificationCodeWithEmail> createState() =>
//       _VerificationCodeWithEmailState();
// }

// class _VerificationCodeWithEmailState extends State<VerificationCodeWithEmail> {
//   GlobalKey<FormState> formkey = GlobalKey();
//   late String phone;
//   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: Form(
//             key: formkey,
//             autovalidateMode: autovalidateMode,
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   const SizedBox(height: 8),
//                   Row(
//                     children: [
//                       CustomBackArrow(),
//                       SizedBox(width: 10),
//                       Text(
//                         "Verification Code",
//                         style: Styles.medium16.copyWith(
//                           color: AppColors.primaryColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   SvgPicture.asset(Assets.imagesVerificationCodeWithEmail),
//                   SizedBox(height: 10),

//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 55),
//                     child: Column(
//                       children: [
//                         Text(
//                           "Please enter the 4 digit code",
//                           textAlign: TextAlign.center,
//                           style: Styles.medium16.copyWith(
//                             color: AppColors.primaryColor,
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "sent to: ",
//                               textAlign: TextAlign.center,
//                               style: Styles.medium16.copyWith(
//                                 color: AppColors.primaryColor,
//                               ),
//                             ),
//                             Text(
//                               " You@gmail.com ",
//                               textAlign: TextAlign.center,
//                               style: Styles.medium16.copyWith(
//                                 color: AppColors.secondaryColor,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   OTPFields(
//                     onCompleted: (otp) {
//                       // context.read<VerifyOtpCubit>().verifyOtp(
//                       //   otp: otp,
//                       //   contact: phone,
//                       // );
//                       log("OTP entered: $otp");
//                       //cubit
//                     },
//                   ),
//                   const SizedBox(height: 18),
//                   BlocProvider(
//                     create: (context) => VerifyOtpCubit(getIt.get<AuthRepo>()),
//                     child: BlocConsumer<VerifyOtpCubit, VerifyOtpState>(
//                       listener: (context, state) {
//                         if (state is VerifyOtpSuccess) {
//                           showBar(context, "OTP correct");
//                           print("otp correct");
//                           Navigator.pushReplacementNamed(
//                             context,
//                             CreateNewPassword.routeName,
//                           );
//                         } else if (state is VerifyOtpFailure) {
//                           showBar(context, "OTP inCorrect");

//                           print("Error${state.errMessage}");
//                         }
//                       },
//                       builder: (context, state) {
//                         return CustomButton(
//                           text: "Verify Code",
//                           onPressed: () {
//                             Navigator.pushReplacementNamed(
//                               context,
//                               CreateNewPassword.routeName,
//                             );
//                             if (formkey.currentState!.validate()) {
//                               formkey.currentState!.save();
//                             } else {
//                               autovalidateMode = AutovalidateMode.always;
//                               setState(() {});
//                             }
//                           },
//                         );
//                       },
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     "00:46",
//                     style: Styles.semiBold16.copyWith(
//                       color: AppColors.navyColor,
//                     ),
//                   ),
//                   const SizedBox(height: 18),
//                   GestureDetector(
//                     onTap: () {},
//                     child: Text(
//                       "Resend Code",
//                       style: Styles.semiBold16.copyWith(
//                         color: AppColors.navyColor,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
