import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/widgets/custom_profile.dart';
import 'package:cs_ecommerce_app/core/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

class BuildAppbarForHome extends StatelessWidget {
  const BuildAppbarForHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                CustomProfile(),
                SizedBox(width: 10),
                Text("Hi Mohamed !", style: Styles.medium20),
              ],
            ),
          ),
          NotificationWidget(),
        ],
      ),
    );
  }
}
