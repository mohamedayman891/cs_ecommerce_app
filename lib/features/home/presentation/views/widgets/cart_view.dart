import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static const String routeName = "CartView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CartViewBody());
  }
}
