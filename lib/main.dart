import 'package:cs_ecommerce_app/core/helper_function/on_generate_routes.dart';
import 'package:cs_ecommerce_app/core/helper_function/sevice_locator.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signin_view.dart';
import 'package:cs_ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  setup();
  runApp(const CSEcommerce());
}

class CSEcommerce extends StatelessWidget {
  const CSEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        fontFamily: "Poppins",
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: SigninView.routeName,
    );
  }
}
