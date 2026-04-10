import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/main_view_body.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = "mainView";

  @override
  State<MainView> createState() => _MainViewState();
}

int currentViewIndex = 0;

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (index) {
          currentViewIndex = index;

          setState(() {});
        },
      ),
      body: SafeArea(child: MainViewBody(currentViewIndex: currentViewIndex)),
    );
  }
}
