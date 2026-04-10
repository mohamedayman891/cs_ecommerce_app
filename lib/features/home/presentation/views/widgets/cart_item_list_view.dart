import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/cart_view_item.dart';
import 'package:flutter/material.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: CartViewItem(),
        );
      },
    );
  }
}
