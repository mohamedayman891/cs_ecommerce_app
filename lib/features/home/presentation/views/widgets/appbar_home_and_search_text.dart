import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/appbar_home.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class AppbarHomeAndSearchText extends StatelessWidget {
  const AppbarHomeAndSearchText({super.key, this.text, required this.title});
  final String? text;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        AppbarHome(title: title),
        const SizedBox(height: 10),
        SearchTextField(),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(text ?? "All Products", style: Styles.semiBold20(context)),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
