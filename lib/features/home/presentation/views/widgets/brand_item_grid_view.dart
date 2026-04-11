import 'package:cs_ecommerce_app/features/home/data/models/brand_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/brand/brand_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/brand_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandItemGridView extends StatefulWidget {
  const BrandItemGridView({
    super.key,
    required this.checkCount,
    this.crossAxisCount = 2,
  });
  final bool checkCount;
  final int? crossAxisCount;

  @override
  State<BrandItemGridView> createState() => _BrandItemGridViewState();
}

class _BrandItemGridViewState extends State<BrandItemGridView> {
  final List<BrandModel> brand = [
    BrandModel(
      name: "Essence",
      image:
          "https://cdn.dummyjson.com/product-images/beauty/red-lipstick/thumbnail.webp",
    ),
    BrandModel(
      name: "Beauty",
      image:
          "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/thumbnail.webp",
    ),
    BrandModel(
      name: "iphone",
      image:
          "https://cdn.dummyjson.com/product-images/smartphones/iphone-5s/thumbnail.webp",
    ),
    BrandModel(
      name: "Essence",
      image:
          "https://cdn.dummyjson.com/product-images/beauty/red-lipstick/thumbnail.webp",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrandCubit, BrandState>(
      builder: (context, state) {
        if (state is BrandSuccess) {
          return GridView.builder(
            clipBehavior: Clip.none,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 164 / 118,
            ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.checkCount ? state.brand.length : 4,
            itemBuilder: (context, index) {
              return BrandItem(brandModel: state.brand[index]);
            },
          );
        } else if (state is BrandFailure) {
          return Text(state.errMessage);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
    return GridView.builder(
      clipBehavior: Clip.none,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.crossAxisCount ?? 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 164 / 118,
      ),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.checkCount ? brand.length : 3,
      itemBuilder: (context, index) {
        return BrandItem(brandModel: brand[index]);
      },
    );
  }
}
