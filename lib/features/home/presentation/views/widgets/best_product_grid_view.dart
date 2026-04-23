import 'package:cs_ecommerce_app/features/home/presentation/manager/best_product/best_product_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestProductGridView extends StatefulWidget {
  const BestProductGridView({super.key, required this.checkCount});
  final bool checkCount;

  @override
  State<BestProductGridView> createState() => _BestProductGridViewState();
}

class _BestProductGridViewState extends State<BestProductGridView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestProductCubit, BestProductState>(
      builder: (context, state) {
        if (state is BestProductSuccess) {
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
            itemCount: widget.checkCount ? state.products.length : 2,
            itemBuilder: (context, index) {
              return ProductItem(product: state.products[index]);
            },
          );
        } else if (state is BestProductFailure) {
          return Text(state.errMessage);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
