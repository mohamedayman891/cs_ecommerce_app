import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/utils/app_theme.dart';
import 'package:cs_ecommerce_app/features/home/data/models/profile_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key, required this.profileDetailsModel});
  final ProfileDetailsModel profileDetailsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          // onTap: onTap,
          leading: SvgPicture.asset(
            profileDetailsModel.leading,
            color: isDarkMode(context) ? Colors.white : null,
            width: 18,
            height: 20,
          ),
          title: Text(
            profileDetailsModel.title,
            style: Styles.medium16(context).copyWith(
              color: isDarkMode(context)
                  ? Colors.white
                  : AppColors.primaryColor,
            ),
          ),

          trailing:
              profileDetailsModel.trailing ??
              SvgPicture.asset(Assets.imagesArrowSelect),
        ),
        const Divider(height: 0, color: Color(0xffDCDDE0)),
      ],
    );
  }
}
