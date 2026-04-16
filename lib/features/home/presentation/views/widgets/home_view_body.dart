import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/build_appbar_for_home.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/best_for_you_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/brand_item_grid_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/brands_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/buy_again_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/categories_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/category_item_grid_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/popular_product_grid_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/popular_product_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 15),
                BuildAppbarForHome(),
                SizedBox(height: 10),
                SearchTextField(),
                SizedBox(height: 15),
                Image.asset(Assets.imagesOffer1),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Product", style: Styles.semiBold20(context)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          PopularProductPage.routeName,
                        );
                      },
                      child: Text(
                        "View all",
                        style: Styles.medium16(context).copyWith(
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                PopularProductGridView(checkcount: false),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Category", style: Styles.semiBold20(context)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          CategoriesPage.routeName,
                        );
                      },
                      child: Text(
                        "View all",
                        style: Styles.medium16(context).copyWith(
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                CategoryItemGridView(checkCount: false, crossAxisCount: 3),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Best for You", style: Styles.semiBold20(context)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          BestForYouPage.routeName,
                        );
                      },
                      child: Text(
                        "View all",
                        style: Styles.medium16(context).copyWith(
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                PopularProductGridView(checkcount: false),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Brand", style: Styles.semiBold20(context)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          BrandsPage.routeName,
                        );
                      },
                      child: Text(
                        "View all",
                        style: Styles.medium16(context).copyWith(
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                BrandItemGridView(checkCount: false, crossAxisCount: 3),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Buy Again", style: Styles.semiBold20(context)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          BuyAgainPage.routeName,
                        );
                      },
                      child: Text(
                        "View all",
                        style: Styles.medium16(context).copyWith(
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                PopularProductGridView(checkcount: false),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
