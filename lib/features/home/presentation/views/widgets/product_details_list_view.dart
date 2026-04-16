import 'package:cs_ecommerce_app/core/utils/app_colors.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsListView extends StatefulWidget {
  const ProductDetailsListView({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<ProductDetailsListView> createState() => _ProductDetailsListViewState();
}

class _ProductDetailsListViewState extends State<ProductDetailsListView> {
  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final images = List.generate(4, (_) => widget.productModel.image);
    if (images.isEmpty) {
      return const Center(child: Icon(Icons.image_not_supported));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 160,
          child: PageView.builder(
            controller: pageController,
            itemCount: images.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Image.network(
                images[index],
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.broken_image);
                },
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            images.length,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentIndex == index ? 30 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? AppColors.secondaryColor
                    : AppColors.lightColor,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              images.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                    pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    );
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: currentIndex == index
                          ? AppColors.secondaryColor
                          : AppColors.lightColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(images[index], width: 60),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
