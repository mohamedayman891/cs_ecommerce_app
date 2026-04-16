// import 'package:cs_ecommerce_app/features/home/presentation/manager/cart/cart_cubit.dart';
// import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/cart_view_item.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class PampersItemListView extends StatelessWidget {
//   const PampersItemListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CartCubit, CartState>(
//       builder: (context, state) {
//         final cartItems = context.read<CartCubit>().cartItems;

//         if (cartItems.isEmpty) {
//           return Center(child: Text("Cart is empty"));
//         }

//         return ListView.builder(
//           physics: NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           itemCount: 5,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 12),
//               child: CartViewItem(isCart: false, product: cartItems[index]),
//             );
//           },
//         );
//       },
//     );
//   }
// }
