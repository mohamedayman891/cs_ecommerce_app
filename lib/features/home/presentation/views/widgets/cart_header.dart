import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/appbar_home.dart';
import 'package:flutter/material.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        AppbarHome(title: "Cart"),
        SizedBox(height: 10),
        Row(children: [Text("Products on Cart", style: Styles.semiBold20)]),
        SizedBox(height: 10),
      ],
    );
  }
}
