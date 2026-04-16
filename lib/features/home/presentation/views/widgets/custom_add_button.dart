import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key, required this.isAddOnly, this.onTap});
  final void Function()? onTap;
  final bool isAddOnly;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isAddOnly ? 28 : 48,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: AppColors.secondaryColor, width: 1),
            ),
          ),

          child: Center(
            child: isAddOnly
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Add",
                      style: Styles.medium14(context).copyWith(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.imagesCartAdd),
                        SizedBox(width: 8),
                        Text(
                          "Add to Cart",
                          style: Styles.medium14(context).copyWith(
                            color: AppColors.secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
