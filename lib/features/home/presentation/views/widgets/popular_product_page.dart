import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/appbar_home_and_search_text.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/popular_product_grid_view.dart';
import 'package:flutter/material.dart';

class PopularProductPage extends StatelessWidget {
  const PopularProductPage({super.key});
  static const String routeName = "PopularProductPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  AppbarHomeAndSearchText(title: "Popular Product"),
                  PopularProductGridView(checkcount: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
