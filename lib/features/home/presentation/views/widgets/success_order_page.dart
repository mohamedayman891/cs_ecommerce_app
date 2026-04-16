import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/common_simple_page.dart';
import 'package:flutter/material.dart';

class SuccessOrderPage extends StatelessWidget {
  const SuccessOrderPage({super.key});
  static const String routeName = "SuccessOrderPage";
  @override
  Widget build(BuildContext context) {
    return CommonSimplePage(
      title: "Checkout",
      image: Assets.imagesSuccessOrder,
      text: "Thank You!",
      subText: "Woah, You Have sucessfully orderd",
      buttonText: "Go Home",
      onPressed: () {},
      isCard: false,
    );
  }
}
