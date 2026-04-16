import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class StarRatingListView extends StatelessWidget {
  const StarRatingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          5,
          (index) => Icon(
            index < 4 ? Icons.star : Icons.star_border,
            color: AppColors.primaryColor,
            size: 20,
          ),
        ),
      ],
    );
  }
}
