import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/cart_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/favorites_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/home_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/menu_view.dart';
import 'package:flutter/material.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required this.currentViewIndex});
  final int currentViewIndex;
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: [HomeView(), CartView(), FavoritesView(), MenuView()],
    );
  }
}
