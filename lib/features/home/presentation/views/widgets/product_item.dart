import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/custom_add_button.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/custom_favorite_heart.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/custom_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.secondaryColor.withValues(alpha: 0.1),
            blurRadius: 4,
            spreadRadius: 6,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.network(
                        product.image,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${product.price} LE",
                      style: Styles.medium12.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    CustomRating(product: product),
                  ],
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    product.title,
                    style: Styles.medium12.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: CustomAddButton(onPressed: () {}),
                ),
                SizedBox(height: 3),
              ],
            ),
            Positioned(right: -9, top: -7, child: CustomFavoriteHeart()),
          ],
        ),
      ),
    );
  }
}
