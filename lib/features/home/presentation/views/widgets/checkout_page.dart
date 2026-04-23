import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/cart/cart_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/checkout_body.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/appbar_home.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/success_order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});
  static const String routeName = "CheckoutPage";
  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();

    final totalPrice = cartCubit.getTotalPrice();
    final totalItems = cartCubit.getTotalItems();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              const SizedBox(height: 5),
              AppbarHome(title: "Checkout"),
              CheckoutBody(),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "Payment",
                    style: Styles.semiBold16(
                      context,
                    ).copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1, color: AppColors.secondaryColor),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal ($totalItems items)",
                          style: Styles.medium14(context),
                        ),
                        Text(
                          "${totalPrice.toStringAsFixed(2)} EGP",
                          style: Styles.medium14(context),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Fees", style: Styles.medium14(context)),
                        Text("00,00 EGP", style: Styles.medium14(context)),
                      ],
                    ),
                    Divider(color: AppColors.secondaryColor),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: Styles.medium14(context).copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${totalPrice.toStringAsFixed(2)} EGP",
                          style: Styles.medium14(context).copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              CustomButton(
                text: "Place Order",
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    SuccessOrderPage.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
