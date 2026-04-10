import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/appbar_home_and_search_text.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/popular_product_grid_view.dart';
import 'package:flutter/material.dart';

class BestForYouPage extends StatelessWidget {
  const BestForYouPage({super.key});
  static const String routeName = "BestForYouPage";
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
                  AppbarHomeAndSearchText(title: "Best for You"),
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
