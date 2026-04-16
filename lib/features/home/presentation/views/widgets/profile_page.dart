import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/utils/app_theme.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_profile.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/appbar_home.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/profile_details_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static const String routeName = "ProfilePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: Column(
          children: [
            AppbarHome(
              title: "My Profile",
              child: SvgPicture.asset(Assets.imagesCartIconUIA),
            ),
            // SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.imagesCover),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      CustomProfile(radius: 40),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: SvgPicture.asset(Assets.imagesCameraIcon),
                      ),
                    ],
                  ),
                  Text(
                    "Mohamed Ayman",
                    style: Styles.semiBold18(context).copyWith(
                      color: isDarkMode(context)
                          ? Colors.white
                          : AppColors.primaryColor,
                    ),
                  ),
                  Text(
                    "@Nba1Usef",
                    style: Styles.medium14(context).copyWith(
                      color: isDarkMode(context)
                          ? Colors.white
                          : AppColors.navyColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: ProfileDetailsListView()),
          ],
        ),
      ),
    );
  }
}
