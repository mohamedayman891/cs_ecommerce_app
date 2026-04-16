import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/cart_quantity.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/custom_favorite_heart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartViewItem extends StatelessWidget {
  const CartViewItem({super.key, required this.isCart, required this.product});
  final bool isCart;
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 13, left: 5),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(width: 1, color: AppColors.lightColor),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.lightColor.withValues(alpha: 0.2),
            blurRadius: 4,
            spreadRadius: 4,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            product.image,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.medium14(
                            context,
                          ).copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      CustomFavoriteHeart(),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "84 Diapers",
                        style: Styles.medium12(context).copyWith(
                          color: AppColors.navyColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  isCart
                      ? SizedBox.shrink()
                      : Row(
                          children: [
                            SvgPicture.network(Assets.imagesTimeIcon),
                            SizedBox(width: 6),
                            Text(
                              "Deliver in 60 mins",
                              style: Styles.medium12(
                                context,
                              ).copyWith(color: AppColors.secondaryColor),
                            ),
                          ],
                        ),
                  CartQuantity(product: product),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
