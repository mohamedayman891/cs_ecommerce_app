import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/appbar_home_and_search_text.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/brand_item_grid_view.dart';
import 'package:flutter/material.dart';

class BrandsPage extends StatelessWidget {
  const BrandsPage({super.key});
  static const String routeName = "BrandsPage";
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
                  AppbarHomeAndSearchText(title: "Brands", text: "All Brands"),
                  BrandItemGridView(checkCount: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
