import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/features/home/data/models/bottom_navigation_bar_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/navigation_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.onItemTapped});
  final ValueChanged<int> onItemTapped;
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          side: BorderSide(width: 1, color: AppColors.lightColor),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.lightColor,
            blurRadius: 4,
            offset: Offset(0, -1),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: bottomNavigationBarItems.asMap().entries.map((e) {
          var index = e.key;
          var item = e.value;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectIndex = index;
                  widget.onItemTapped(index);
                });
              },
              child: NavigationBarItem(
                isSelected: selectIndex == index,
                bottomNavigationBarModel: item,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
