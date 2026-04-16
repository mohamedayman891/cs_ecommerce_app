import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;
  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool isTermedAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTermedAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermedAccepted,
        ),
        SizedBox(width: 8),
        Text.rich(
          textAlign: TextAlign.left,
          TextSpan(
            children: [
              TextSpan(
                text: "Remember Me",
                style: Styles.medium14(
                  context,
                ).copyWith(color: AppColors.navyColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
