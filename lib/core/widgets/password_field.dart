import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved, required this.hint});
  final void Function(String?)? onSaved;
  final String hint;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscure: obscure,
      onSaved: widget.onSaved,
      hint: widget.hint,
      keyboardType: TextInputType.visiblePassword,
      prefixIcon: Icon(Icons.lock_outlined),
      suffixIcon: GestureDetector(
        onTap: () {
          obscure = !obscure;
          setState(() {});
        },
        child: obscure
            ? const Icon(
                Icons.visibility_off,
                color: AppColors.primaryColor,
                size: 20,
              )
            : const Icon(
                Icons.remove_red_eye,
                color: AppColors.primaryColor,
                size: 20,
              ),
      ),
    );
  }
}
