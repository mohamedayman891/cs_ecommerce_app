import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/cart/cart_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/appbar_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final cartItems = context.watch<CartCubit>().cartItems;
    return Column(
      children: [
        SizedBox(height: 15),
        AppbarHome(title: "Cart"),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              cartItems.isNotEmpty ? "Products on Cart" : "",
              style: Styles.semiBold20(context),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
