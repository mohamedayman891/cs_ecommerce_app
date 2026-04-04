import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: 16,
        height: 16,
        duration: Duration(seconds: 100),
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.secondaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              width: 1.5,
              color: isChecked ? Colors.transparent : Color(0xffDCDEDE),
            ),
          ),
        ),
        child: isChecked
            ? SvgPicture.asset(Assets.imagesImageCheck)
            : SizedBox(),
      ),
    );
  }
}
