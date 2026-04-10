import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(CupertinoIcons.star, size: 16, color: AppColors.primaryColor),
        SizedBox(width: 3),
        Text(
          "${product.rating}",
          style: Styles.medium12.copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
