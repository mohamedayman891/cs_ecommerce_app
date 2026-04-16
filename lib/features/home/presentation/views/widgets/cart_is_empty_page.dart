import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/common_simple_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/home_view.dart';
import 'package:flutter/material.dart';

class CartIsEmptyPage extends StatelessWidget {
  const CartIsEmptyPage({super.key});
  static const String routeName = "CartIsEmptyPage";
  @override
  Widget build(BuildContext context) {
    return CommonSimplePage(
      title: "Cart",
      image: Assets.imagesCartEmpty,
      text: "Your Cart is Empty",
      subText:
          "Check our big offers, fresh products and fill your cart with items",
      buttonText: "Start Shopping",
      onPressed: () {
        Navigator.pushReplacementNamed(context, HomeView.routeName);
      },
      isCard: true,
    );
  }
}
