import 'package:cs_ecommerce_app/core/helper_function/build_error_bar.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/favorite/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFavoriteHeart extends StatelessWidget {
  const CustomFavoriteHeart({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        final isFavorite = context.read<FavoriteCubit>().isFavorite(product);
        return IconButton(
          onPressed: () {
            context.read<FavoriteCubit>().toggleFavorite(product);

            showBar(
              context,
              isFavorite ? "Removed from Favorite" : "Added to Favorite",
            );
          },
          icon: SvgPicture.asset(
            isFavorite ? Assets.imagesHeartIcon : Assets.imagesHeartIconWhite,
          ),
        );
      },
    );
  }
}
