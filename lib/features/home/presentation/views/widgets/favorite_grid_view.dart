import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/favorite/favorite_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteGridView extends StatelessWidget {
  const FavoriteGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        final favoriteItem = context.read<FavoriteCubit>().favoriteItem;
        if (favoriteItem.isEmpty) {
          return Center(
            child: Text(
              "NO Products favorite",
              style: Styles.semiBold16(context),
            ),
          );
        }
        return GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 164 / 176,
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: favoriteItem.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ProductItem(product: favoriteItem[index]),
            );
          },
        );
      },
    );
  }
}
