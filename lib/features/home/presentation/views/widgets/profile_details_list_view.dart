import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/features/home/data/models/profile_details_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/app_notifications_widget.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/dark_mode_widget.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/profile_details.dart';
import 'package:flutter/cupertino.dart';

class ProfileDetailsListView extends StatelessWidget {
  const ProfileDetailsListView({super.key});

  final List<ProfileDetailsModel> profile = const [
    ProfileDetailsModel(
      leading: Assets.imagesAccount,
      title: "Account Preferences",
    ),
    ProfileDetailsModel(
      leading: Assets.imagesPayment,
      title: "Subscription & Payment",
    ),
    ProfileDetailsModel(
      leading: Assets.imagesNotification,
      title: "App Notifications",
      trailing: AppNotificationsWidget(),
    ),
    ProfileDetailsModel(
      leading: Assets.imagesDarkMode,
      title: "Dark Mode",
      trailing: DarkModeWidget(),
    ),
    ProfileDetailsModel(leading: Assets.imagesRate, title: "Rate Us"),
    ProfileDetailsModel(
      leading: Assets.imagesFeedback,
      title: "Provide Feedback",
    ),
    ProfileDetailsModel(leading: Assets.imagesLogOut, title: "Log Out"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: profile.length,
      itemBuilder: (context, index) {
        return ProfileDetails(profileDetailsModel: profile[index]);
      },
    );
  }
}
