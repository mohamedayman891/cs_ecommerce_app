import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContinueWithSocial extends StatelessWidget {
  const ContinueWithSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Or Continue With", style: Styles.regular12),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.imagesGoogleIcon),
            SizedBox(width: 16),
            SvgPicture.asset(Assets.imagesAppleIcon),
            SizedBox(width: 16),
            SvgPicture.asset(Assets.imagesFacebokIcon),
          ],
        ),
      ],
    );
  }
}
