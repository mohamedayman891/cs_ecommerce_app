import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/product/product_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularProductGridView extends StatefulWidget {
  const PopularProductGridView({super.key, required this.checkcount});
  final bool checkcount;

  @override
  State<PopularProductGridView> createState() => _PopularProductGridViewState();
}

class _PopularProductGridViewState extends State<PopularProductGridView> {
  // final List<ProductModel> product =products
  final List<ProductModel> product = [
    ProductModel(
      title: "Essence Mascara Lash Princess",
      image:
          "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/thumbnail.webp",
      price: 9.99,
      rating: 2.4,
    ),
    ProductModel(
      title: "Essence Mascara Lash Princess",
      image:
          "https://cdn.dummyjson.com/product-images/beauty/powder-canister/thumbnail.webp",
      price: 9.99,
      rating: 2.4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
      itemCount: widget.checkcount ? product.length : 4,
      itemBuilder: (context, index) {
        return ProductItem(product: product[index]);
      },
    );

    BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccess) {
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
            itemCount: widget.checkcount ? state.product.length : 4,
            itemBuilder: (context, index) {
              return ProductItem(product: state.product[index]);
            },
          );
        } else if (state is ProductFailure) {
          return Text(state.errMessage);
        } else {
          return CircularProgressIndicator();
        }
      },
    );

    BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccess) {
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
            itemCount: widget.checkcount ? product.length : 4,
            itemBuilder: (context, index) {
              return ProductItem(product: product[index]);
            },
          );
        } else if (state is ProductFailure) {
          return Text(state.errMessage);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
