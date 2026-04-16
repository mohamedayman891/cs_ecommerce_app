import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.prefixIcon,
    this.obscure = false,
    required this.keyboardType,
    this.onSaved,
    this.suffixIcon,
    this.onChanged,
  });
  final String hint;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final bool obscure;
  final TextInputType keyboardType;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "this field required";
        }
        return null;
      },
      keyboardType: keyboardType,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Styles.regular12(context).copyWith(color: Color(0xff929BAB)),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconColor: AppColors.primaryColor,
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(width: 1, color: AppColors.lightColor),
    );
  }
}
