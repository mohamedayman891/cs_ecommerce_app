import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/cart/cart_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCheckoutSection extends StatelessWidget {
  const CartCheckoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CartCubit>();
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.lightColor, width: 1),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal (${cubit.getTotalItems()} items)",
                    style: Styles.semiBold16(
                      context,
                    ).copyWith(color: AppColors.primaryColor),
                  ),
                  Text(
                    "${cubit.getTotalPrice().toStringAsFixed(2)} EGP",
                    style: Styles.semiBold16(
                      context,
                    ).copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomButton(
                text: "Checkout",
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    CheckoutPage.routeName,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
