import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/appbar_home.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchNotFoundPage extends StatelessWidget {
  const SearchNotFoundPage({super.key});
  static const String routeName = "SearchNotFoundPage";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            AppbarHome(visible: false, title: ''),
            SearchTextField(),
            const SizedBox(height: 12),
            SvgPicture.asset(Assets.imagesSearchNotFound),
            const SizedBox(height: 10),
            Text("Oops Not Found!", style: Styles.medium24(context)),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
              child: Text(
                "Check our big offers, fresh products and fill your cart with items",
                style: Styles.medium16(context),
                textAlign: TextAlign.center,
              ),
            ),

            CustomButton(text: "Continue Shopping", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
