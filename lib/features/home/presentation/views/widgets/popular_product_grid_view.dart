import 'package:cs_ecommerce_app/features/home/presentation/manager/product/product_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularProductGridView extends StatefulWidget {
  const PopularProductGridView({super.key, required this.checkCount});
  final bool checkCount;
  @override
  State<PopularProductGridView> createState() => _PopularProductGridViewState();
}

class _PopularProductGridViewState extends State<PopularProductGridView> {
  late final ScrollController scrollController;
  var nextPage = 1;
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    var currentPositions = scrollController.position.pixels;
    var maxScrollLength = scrollController.position.maxScrollExtent;
    if (currentPositions >= 0.7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<ProductCubit>(context).getProduct();
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccess) {
          return GridView.builder(
            controller: scrollController,
            clipBehavior: Clip.none,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 164 / 176,
            ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.checkCount ? state.products.length : 2,
            itemBuilder: (context, index) {
              if (index < state.products.length) {
                return ProductItem(product: state.products[index]);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
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
