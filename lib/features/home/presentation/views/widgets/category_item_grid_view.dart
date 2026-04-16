import 'package:cs_ecommerce_app/features/home/presentation/manager/category/category_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryItemGridView extends StatelessWidget {
  const CategoryItemGridView({
    super.key,
    required this.checkCount,
    this.crossAxisCount = 2,
  });
  final bool checkCount;
  final int? crossAxisCount;
  // final List<CategoryModel> category = [
  //   CategoryModel(
  //     name: "Beauty",
  //     image:
  //         "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp",
  //   ),
  //   CategoryModel(
  //     name: "Fragrances",
  //     image:
  //         "https://cdn.dummyjson.com/product-images/fragrances/calvin-klein-ck-one/1.webp",
  //   ),
  //   CategoryModel(
  //     name: "Mens Shirts",
  //     image:
  //         "https://cdn.dummyjson.com/product-images/mens-shirts/blue-&-black-check-shirt/1.webp",
  //   ),
  //   CategoryModel(
  //     name: "Mens Shirts",
  //     image:
  //         "https://cdn.dummyjson.com/product-images/mens-shirts/blue-&-black-check-shirt/1.webp",
  //   ),
  //   CategoryModel(
  //     name: "Beauty",
  //     image:
  //         "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp",
  //   ),
  //   CategoryModel(
  //     name: "Fragrances",
  //     image:
  //         "https://cdn.dummyjson.com/product-images/fragrances/calvin-klein-ck-one/1.webp",
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategorySuccess) {
          return GridView.builder(
            clipBehavior: Clip.none,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount ?? 3,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 164 / 118,
            ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: checkCount ? state.category.length : 6,
            itemBuilder: (context, index) {
              return CategoryItem(categoryModel: state.category[index]);
            },
          );
        } else if (state is CategoryFailure) {
          return Text(state.errMessage);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
    // GridView.builder(
    //   clipBehavior: Clip.none,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: crossAxisCount ?? 3,
    //     mainAxisSpacing: 16,
    //     crossAxisSpacing: 16,
    //     childAspectRatio: 164 / 118,
    //   ),
    //   physics: NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   itemCount: checkCount ? category.length : 2,
    //   itemBuilder: (context, index) {
    //     return CategoryItem(categoryModel: category[index]);
    //   },
    // );
  }
}
