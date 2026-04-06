import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/password_field.dart';
import 'package:flutter/material.dart';

class TitlePasswardField extends StatelessWidget {
  const TitlePasswardField({
    super.key,
    required this.text,
    this.onSaved,
    this.onChanged,
  });
  final String text;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
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
        PasswordField(onSaved: onSaved, hint: text),
      ],
    );
  }
}
