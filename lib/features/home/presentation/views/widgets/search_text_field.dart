import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/core/utils/app_text_style.dart';
import 'package:cs_ecommerce_app/core/utils/app_theme.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/best_product/best_product_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/product/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      onChanged: (value) {
        setState(() {
          if (value.isEmpty) {
            // 🔥 رجع كل المنتجات
            context.read<ProductCubit>().getProduct();
            context.read<BestProductCubit>().getBestProduct();
          } else {
            context.read<ProductCubit>().searchProduct(value);
            context.read<BestProductCubit>().searchProduct(value);
          }
        }); // عشان تغير الأيقونة
      },

      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 6),

        // 🔥 هنا بقى الذكاء
        prefixIcon: searchController.text.isNotEmpty
            ? GestureDetector(
                onTap: () {
                  searchController.clear();

                  // // 🔥 رجع كل المنتجات
                  setState(() {
                    context.read<ProductCubit>().getProduct();
                    context.read<BestProductCubit>().getBestProduct();
                  });
                },
                child: const Icon(Icons.close),
              )
            : SvgPicture.asset(
                Assets.imagesSearchIcons,
                colorFilter: ColorFilter.mode(
                  isDarkMode(context) ? Colors.white : AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),

        prefixIconConstraints: const BoxConstraints(
          maxHeight: 24,
          minWidth: 50,
        ),

        suffixIcon: GestureDetector(
          onTap: () {
            context.read<ProductCubit>().toggleSortByPrice();
          },
          child: SvgPicture.asset(Assets.imagesFilterIcon),
        ),

        suffixIconConstraints: const BoxConstraints(
          maxHeight: 25,
          minWidth: 50,
        ),

        hintText: "What are you looking for ? ",
        hintStyle: Styles.regular16(
          context,
        ).copyWith(color: const Color(0xff929BAB)),

        border: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(width: 1, color: AppColors.lightColor),
    );
  }
}
