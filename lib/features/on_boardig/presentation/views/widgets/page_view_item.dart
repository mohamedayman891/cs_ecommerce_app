import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.text,
    required this.currentPage,
    required this.onPressed,
  });
  final String image, title, subTitle, text;
  final double currentPage;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(image),
          const SizedBox(height: 25),
          DotsIndicator(
            dotsCount: 3,
            position: currentPage,
            decorator: DotsDecorator(
              size: Size.square(16),
              activeSize: Size.square(20),
              activeColor: AppColors.primaryColor,
              color: AppColors.lightColor,
            ),
          ),
          const SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: Styles.semiBold20(context),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              Align(
                child: Text(
                  subTitle,
                  style: Styles.medium14(context),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          CustomButton(text: text, onPressed: onPressed),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
