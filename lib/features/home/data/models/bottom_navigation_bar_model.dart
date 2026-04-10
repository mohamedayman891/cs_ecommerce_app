import 'package:cs_ecommerce_app/core/utils/app_images.dart';

class BottomNavigationBarModel {
  final String image;
  final String name;

  BottomNavigationBarModel({required this.image, required this.name});
}

// getter
List<BottomNavigationBarModel> get bottomNavigationBarItems => [
  BottomNavigationBarModel(image: Assets.imagesHomeIcon, name: 'Home'),
  BottomNavigationBarModel(image: Assets.imagesCartIcon, name: 'Cart'),
  BottomNavigationBarModel(image: Assets.imagesFavoriteIcon, name: 'Favorites'),
  BottomNavigationBarModel(image: Assets.imagesMenu, name: 'Menu'),
];
