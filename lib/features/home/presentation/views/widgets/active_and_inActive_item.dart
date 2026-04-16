import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          image,
          colorFilter: ColorFilter.mode(
            AppColors.secondaryColor,
            BlendMode.srcIn,
          ),
        ),
        Text(
          text,
          style: Styles.medium14(context).copyWith(
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class InactiveItem extends StatelessWidget {
  const InactiveItem({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(image),
        Text(
          text,
          style: Styles.medium14(
            context,
          ).copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
