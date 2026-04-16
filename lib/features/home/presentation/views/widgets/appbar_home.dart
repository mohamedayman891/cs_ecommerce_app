import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/utils/app_theme.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_profile.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/main_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarHome extends StatelessWidget {
  const AppbarHome({
    super.key,
    required this.title,
    this.visible = true,
    this.child,
  });
  final String title;
  final bool visible;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, MainView.routeName);
            },
            child: SvgPicture.asset(
              Assets.imagesBackIcon,
              colorFilter: ColorFilter.mode(
                isDarkMode(context) ? Colors.white : AppColors.primaryColor,
                BlendMode.srcIn,
              ),
              width: 44,
            ),
          ),
          Visibility(
            visible: visible,
            child: Text(
              title,
              style: Styles.semiBold20(context).copyWith(
                color: isDarkMode(context)
                    ? Colors.white
                    : AppColors.primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, ProfilePage.routeName);
            },
            child: child ?? CustomProfile(),
          ),
        ],
      ),
    );
  }
}
