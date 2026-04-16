import 'package:cs_ecommerce_app/core/helper_function/build_error_bar.dart';
import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/cart/cart_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/count_item_details_botton.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/custom_add_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountItemDetails extends StatefulWidget {
  const CountItemDetails({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  State<CountItemDetails> createState() => _CountItemDetailsState();
}

class _CountItemDetailsState extends State<CountItemDetails> {
  int selectedIndex = -1;
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Select Size",
              style: Styles.regular16(
                context,
              ).copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
        Row(
          children: List.generate(4, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CountItemDetailsButton(
                text: "${index + 1}",
                isSelected: selectedIndex == index,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                    quantity = index + 1;
                  });
                },
                onChanged: (value) {
                  setState(() {
                    quantity = value;
                  });
                },
              ),
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Price", style: Styles.medium18(context)),
                  Text(
                    "${(widget.productModel.price * quantity).toStringAsFixed(2)} EGP",
                    style: Styles.medium18(context),
                  ),
                ],
              ),
              CustomAddButton(
                isAddOnly: false,
                onTap: () {
                  context.read<CartCubit>().addToCart(widget.productModel);
                  showBar(context, "Product Added Successfully");
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
