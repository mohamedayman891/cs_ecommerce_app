import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/profile_page.dart';
import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});
  static const String routeName = "MenuView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ProfilePage());
  }
}
