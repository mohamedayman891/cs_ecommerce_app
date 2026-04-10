import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFavoriteHeart extends StatefulWidget {
  const CustomFavoriteHeart({super.key});

  @override
  State<CustomFavoriteHeart> createState() => _CustomFavoriteHeartState();
}

class _CustomFavoriteHeartState extends State<CustomFavoriteHeart> {
  bool isFavorite = false; // الحالة

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: SvgPicture.asset(
        isFavorite ? Assets.imagesHeartIcon : Assets.imagesHeartIconWhite,
      ),
    );
  }
}
