import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/add_and_delete_button.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/custom_favorite_heart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartViewItem extends StatelessWidget {
  const CartViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                color: AppColors.secondaryColor.withValues(alpha: 0.2),
                blurRadius: 4,
                spreadRadius: 0,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(Assets.imagesPampers),
                SizedBox(width: 6),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pampers Swaddlers", style: Styles.medium14),
                        // Spacer(),
                        SizedBox(width: 70),
                        CustomFavoriteHeart(),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "84 Diapers",
                          style: Styles.medium12.copyWith(
                            color: AppColors.navyColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Price: 345,00 EGP", style: Styles.medium14),
                        SizedBox(width: 95),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.star,
                              size: 16,
                              color: AppColors.primaryColor,
                            ),
                            // Spacer(),
                            Text(
                              "4.9",
                              style: Styles.medium12.copyWith(
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddAndDeleteButton(isTrash: true),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 70,
                            vertical: 11,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffF5FBFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "1",
                              style: Styles.semiBold16.copyWith(
                                color: Color(0xff3F80FF),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        AddAndDeleteButton(isTrash: false),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
