import 'package:cs_ecommerce_app/features/home/presentation/manager/best_product/best_product_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/brand/brand_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/category/category_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/product/product_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/main_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = "mainView";

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  void initState() {
    context.read<ProductCubit>().getProduct();
    context.read<BestProductCubit>().getBestProduct();

    context.read<CategoryCubit>().getCategory();
    context.read<BrandCubit>().getBrand();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (index) {
          currentViewIndex = index;
          setState(() {});
        },
      ),
      body: SafeArea(child: MainViewBody(currentViewIndex: currentViewIndex)),
    );
  }
}
