import 'package:cs_ecommerce_app/core/routing/on_generate_routes.dart';
import 'package:cs_ecommerce_app/core/utils/app_theme.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signin_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/theme_mode/theme_mode_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MaterialAppEcommerce extends StatelessWidget {
  const MaterialAppEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeCubit, ThemeModeState>(
      builder: (context, state) {
        final theme = context.read<ThemeModeCubit>();
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: theme.currentMode,
          onGenerateRoute: onGenerateRoute,
          initialRoute: SigninView.routeName,
        );
      },
    );
  }
}
