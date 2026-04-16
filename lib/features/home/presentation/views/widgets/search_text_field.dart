import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 7, horizontal: 6),
        prefixIcon: SvgPicture.asset(
          Assets.imagesSearchIcons,
          colorFilter: ColorFilter.mode(
            isDarkMode(context) ? Colors.white : AppColors.primaryColor,
            BlendMode.srcIn,
          ),
        ),
        prefixIconConstraints: BoxConstraints(maxHeight: 24, minWidth: 50),
        suffixIcon: SvgPicture.asset(Assets.imagesFilterIcon),
        suffixIconConstraints: BoxConstraints(maxHeight: 25, minWidth: 50),
        hintText: "What are you looking for ? ",
        hintStyle: Styles.regular16(context).copyWith(color: Color(0xff929BAB)),
        border: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(width: 1, color: AppColors.lightColor),
    );
  }
}
