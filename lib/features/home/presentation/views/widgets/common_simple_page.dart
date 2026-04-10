import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_button.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_profile.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/appbar_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommonSimplePage extends StatelessWidget {
  const CommonSimplePage({
    super.key,
    required this.title,
    required this.text,
    required this.subText,
    required this.buttonText,
    required this.onPressed,
    required this.image,
    this.visible = true,
    this.child,
  });
  final String title, text, subText, buttonText, image;
  final void Function() onPressed;
  final bool visible;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 15),
          AppbarHome(
            title: title,
            visible: visible,
            child: child ?? CustomProfile(),
          ),
          const SizedBox(height: 6),
          SvgPicture.asset(image),
          const SizedBox(height: 10),
          Text(text, style: Styles.medium24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            child: Text(
              subText,
              style: Styles.medium16,
              textAlign: TextAlign.center,
            ),
          ),

          CustomButton(text: buttonText, onPressed: onPressed),
        ],
      ),
    );
  }
}
