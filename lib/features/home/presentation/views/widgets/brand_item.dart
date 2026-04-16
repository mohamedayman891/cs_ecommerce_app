import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/data/models/brand_model.dart';

import 'package:flutter/material.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key, required this.brandModel});
  final BrandModel brandModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            width: 1.5,
            color: AppColors.lightColor.withValues(alpha: 0.4),
          ),
        ),
      ),
      child: Column(
        children: [
          Expanded(child: Image.network(brandModel.image)),
          Text(
            brandModel.name,
            style: Styles.medium16(
              context,
            ).copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
