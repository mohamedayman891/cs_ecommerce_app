import 'package:cs_ecommerce_app/features/home/presentation/manager/cart/cart_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/cart_is_empty_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/cart_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final cartItems = context.read<CartCubit>().cartItems;
        if (cartItems.isEmpty) {
          return CartIsEmptyPage();
        }
        return ListView.builder(
          reverse: true,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: CartViewItem(isCart: true, product: cartItems[index]),
            );
          },
        );
      },
    );
  }
}
