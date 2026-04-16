import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/product_details/product_details_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/product_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key, required this.productModel});
  static const String routeName = "ProductDetailsView";
  final ProductModel productModel;

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  void initState() {
    context.read<ProductDetailsCubit>().state;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            return ProductDetailsBody(productModel: widget.productModel);
          },
        ),
      ),
    );
  }
}
