import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomSkip extends StatelessWidget {
  const CustomSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
            side: BorderSide(width: 1, color: AppColors.secondaryColor),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text("Skip", style: Styles.semiBold16(context)),
        ),
      ),
    );
  }
}
