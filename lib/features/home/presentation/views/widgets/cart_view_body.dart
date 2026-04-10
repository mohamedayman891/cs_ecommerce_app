import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/cart_header.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/cart_item_list_view.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(children: [CartHeader(), CartItemListView()]),
      ),
    );
  }
}
