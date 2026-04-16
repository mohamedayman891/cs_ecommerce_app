import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/cart/cart_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/add_and_delete_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartQuantity extends StatefulWidget {
  const CartQuantity({super.key, required this.product});
  final ProductModel product;
  @override
  State<CartQuantity> createState() => _CartQuantityState();
}

class _CartQuantityState extends State<CartQuantity> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Price: ${(widget.product.price * quantity).toStringAsFixed(2)} EGP",
              style: Styles.medium14(
                context,
              ).copyWith(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(
                  CupertinoIcons.star,
                  size: 16,
                  color: AppColors.primaryColor,
                ),
                SizedBox(width: 2),
                Text(
                  widget.product.rating.toString(),
                  style: Styles.medium12(context).copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AddAndDeleteButton(
              isTrash: true,
              onTap: () {
                setState(() {
                  if (quantity > 1) {
                    quantity--;
                  } else {
                    context.read<CartCubit>().deleteProduct(widget.product);
                  }
                });
              },
              onChanged: (value) {
                setState(() {
                  quantity = value;
                });
              },
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 11),
              decoration: BoxDecoration(
                color: Color(0xffF5FBFF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  "$quantity",
                  style: Styles.semiBold16(
                    context,
                  ).copyWith(color: Color(0xff3F80FF)),
                ),
              ),
            ),
            SizedBox(width: 10),
            AddAndDeleteButton(
              isTrash: false,
              onTap: () {
                setState(() {
                  quantity++;
                });
              },
              onChanged: (value) {
                setState(() {
                  quantity = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
