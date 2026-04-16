import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/theme_mode/theme_mode_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DarkModeWidget extends StatefulWidget {
  const DarkModeWidget({super.key});

  @override
  State<DarkModeWidget> createState() => _DarkModeWidgetState();
}

class _DarkModeWidgetState extends State<DarkModeWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = context.read<ThemeModeCubit>();
    return Transform.scale(
      scaleX: 1.3,
      scaleY: 1,
      child: Switch(
        activeTrackColor: AppColors.secondaryColor,
        // activeThumbColor: Colors.,
        // inactiveThumbColor: Colors.white,
        inactiveTrackColor: AppColors.navyColor,
        value: theme.isDark,
        onChanged: (value) {
          setState(() {
            context.read<ThemeModeCubit>().toggleTheme(value);
          });
        },
      ),
    );
  }
}

class Colors {}
