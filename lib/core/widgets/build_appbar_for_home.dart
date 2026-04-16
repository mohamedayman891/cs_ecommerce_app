import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_profile.dart';
import 'package:cs_ecommerce_app/core/widgets/notification_widget.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/profile_page.dart';
import 'package:flutter/material.dart';

class BuildAppbarForHome extends StatelessWidget {
  const BuildAppbarForHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    ProfilePage.routeName,
                  );
                },
                child: CustomProfile(),
              ),
              SizedBox(width: 10),
              Text("Hi Mohamed !", style: Styles.medium20(context)),
            ],
          ),
          NotificationWidget(),
        ],
      ),
    );
  }
}
