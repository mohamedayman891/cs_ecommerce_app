import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle semiBold20(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: isDarkMode(context) ? Colors.white : AppColors.primaryColor,
  );
  static TextStyle medium20(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: isDarkMode(context) ? Colors.white : AppColors.primaryColor,
  );
  static TextStyle medium14(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: isDarkMode(context) ? Colors.white : AppColors.primaryColor,
  );
  static TextStyle medium12(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: isDarkMode(context) ? Colors.white : AppColors.secondaryColor,
  );

  static TextStyle regular12(BuildContext context) => TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 12,
    color: isDarkMode(context) ? Colors.white : AppColors.navyColor,
  );

  static TextStyle medium18(BuildContext context) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: isDarkMode(context) ? Colors.white : AppColors.primaryColor,
  );

  static TextStyle semiBold18(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: isDarkMode(context) ? Colors.white : AppColors.primaryColor,
  );

  static TextStyle semiBold16(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: isDarkMode(context) ? Colors.white : AppColors.secondaryColor,
  );

  static TextStyle medium16(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.navyColor,
  );
  static TextStyle regular16(BuildContext context) => TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: isDarkMode(context) ? Colors.white : AppColors.navyColor,
  );
  static TextStyle medium24(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: isDarkMode(context) ? Colors.white : AppColors.primaryColor,
  );

  static TextStyle semiBold24(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: isDarkMode(context) ? Colors.white : AppColors.primaryColor,
  );
}
