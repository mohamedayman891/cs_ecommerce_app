import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Mohamed ayman", style: Styles.semiBold24)),
            Center(child: Text("Mohamed ayman", style: Styles.semiBold24)),
          ],
        ),
      ],
    );
  }
}
