import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppNotificationsWidget extends StatefulWidget {
  const AppNotificationsWidget({super.key});

  @override
  State<AppNotificationsWidget> createState() => _AppNotificationsWidgetState();
}

class _AppNotificationsWidgetState extends State<AppNotificationsWidget> {
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scaleX: 1.3,
      scaleY: 1,
      child: Switch(
        activeTrackColor: AppColors.secondaryColor,
        activeThumbColor: Colors.white,
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: AppColors.navyColor,
        value: state,
        onChanged: (value) {
          setState(() {
            state = value;
          });
        },
      ),
    );
  }
}
