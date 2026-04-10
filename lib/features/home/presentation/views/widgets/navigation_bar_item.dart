import 'package:cs_ecommerce_app/features/home/data/models/bottom_navigation_bar_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/active_and_inActive_item.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.bottomNavigationBarModel,
  });
  final bool isSelected;
  final BottomNavigationBarModel bottomNavigationBarModel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: bottomNavigationBarModel.image,
            text: bottomNavigationBarModel.name,
          )
        : InactiveItem(
            image: bottomNavigationBarModel.image,
            text: bottomNavigationBarModel.name,
          );
  }
}
