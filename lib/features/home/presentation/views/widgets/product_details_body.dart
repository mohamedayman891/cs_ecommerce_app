import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/appbar_home.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/count_item_details.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/product_details_list_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/star_rating_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 10),
          AppbarHome(
            title: "Product Details",
            child: SvgPicture.asset(Assets.imagesCartIconUIA),
          ),
          SizedBox(height: 5),
          ProductDetailsListView(productModel: productModel),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(color: Color(0xffF5FBFF)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide(
                            color: AppColors.secondaryColor,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Text(
                        "Free Shipping",
                        style: Styles.medium14(
                          context,
                        ).copyWith(color: AppColors.secondaryColor),
                      ),
                    ),
                    Row(
                      children: [
                        StarRatingListView(),
                        const SizedBox(width: 5),
                        Text("(${productModel.rating})"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      productModel.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.medium18(context),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Product Value",
                      style: Styles.medium16(
                        context,
                      ).copyWith(color: AppColors.primaryColor),
                    ),
                  ],
                ),
                SizedBox(height: 7),
                RichText(
                  text: TextSpan(
                    text: productModel.description,
                    style: Styles.medium12(
                      context,
                    ).copyWith(color: AppColors.primaryColor),
                    children: [
                      TextSpan(
                        text: " See more",
                        style: Styles.regular16(
                          context,
                        ).copyWith(color: AppColors.secondaryColor),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CountItemDetails(productModel: productModel),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
