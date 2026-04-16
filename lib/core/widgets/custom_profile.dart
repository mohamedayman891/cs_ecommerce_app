import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({super.key, this.radius = 25});
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.secondaryColor, width: 2),
      ),
      child: CircleAvatar(
        radius: radius ?? 50,
        backgroundImage: AssetImage(Assets.imagesPhoto),
      ),
    );
  }
}
