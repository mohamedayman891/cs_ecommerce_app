import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              "Address",
              style: Styles.semiBold16(
                context,
              ).copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 1, color: AppColors.lightColor),
          ),
          child: Column(
            children: [
              Image.asset(Assets.imagesMapChart),
              ListTile(
                horizontalTitleGap: 0,
                dense: true,
                visualDensity: VisualDensity(vertical: -4),
                leading: Image.asset(Assets.imagesLocation),
                title: Text(
                  "Home",
                  style: Styles.semiBold16(
                    context,
                  ).copyWith(color: AppColors.primaryColor),
                ),
                trailing: Text("Change", style: Styles.semiBold16(context)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36, top: 0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "El-Mahalla, Gharbia, Egypt.",
                          style: Styles.medium14(context),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          "Mobile: +20 105 002 9102",
                          style: Styles.medium14(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Text(
              "Delivery time",
              style: Styles.semiBold16(
                context,
              ).copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
        const SizedBox(height: 3),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 1, color: AppColors.lightColor),
          ),
          child: ListTile(
            horizontalTitleGap: 0,
            dense: true,
            visualDensity: VisualDensity(vertical: -1),
            leading: Image.asset(Assets.imagesDeliveryIcon),
            title: Text(
              "Within 2 days",
              style: Styles.medium14(
                context,
              ).copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 7),
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
        const SizedBox(height: 3),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(width: 1, color: AppColors.lightColor),
          ),
          child: ListTile(
            dense: true,
            visualDensity: VisualDensity(vertical: -1),
            horizontalTitleGap: 0,
            leading: Image.asset(Assets.imagesCashIconUIA),
            title: Text(
              "Cash on delivery",
              style: Styles.medium14(
                context,
              ).copyWith(fontWeight: FontWeight.bold),
            ),
            trailing: Text("Change", style: Styles.semiBold16(context)),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 1, color: AppColors.lightColor),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 6,
                  bottom: 6,
                  right: 120,
                  left: 21,
                ),
                child: Text(
                  "Voucher code",
                  style: Styles.medium14(
                    context,
                  ).copyWith(color: AppColors.navyColor),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 1, color: AppColors.secondaryColor),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 35,
                ),
                child: Text(
                  "Apply",
                  style: Styles.medium14(context).copyWith(
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
