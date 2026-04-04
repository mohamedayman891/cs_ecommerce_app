import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.text,
    required this.hint,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscure = false,
    required this.keyboardType,
    this.onSaved,
  });
  final String text;
  final String hint;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final bool obscure;
  final TextInputType keyboardType;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              text,
              style: Styles.medium12.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
        CustomTextFormField(
          hint: hint,
          prefixIcon: prefixIcon,
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}
