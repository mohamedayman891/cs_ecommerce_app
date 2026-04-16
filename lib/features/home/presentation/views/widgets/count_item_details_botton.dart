import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CountItemDetailsButton extends StatelessWidget {
  const CountItemDetailsButton({
    super.key,
    required this.text,
    required this.isSelected,
    this.onTap,
    required this.onChanged,
  });

  final String text;
  final bool isSelected;
  final VoidCallback? onTap;
  final Function(int) onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isSelected ? AppColors.secondaryColor : AppColors.lightColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(text, style: Styles.medium24(context)),
            if (isSelected)
              Icon(
                Icons.check_circle,
                color: AppColors.secondaryColor,
                size: 20,
              ),
          ],
        ),
      ),
    );
  }
}
