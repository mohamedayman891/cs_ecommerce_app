import 'package:cs_ecommerce_app/core/utils/app_images.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signin_view.dart';
import 'package:cs_ecommerce_app/features/on_boardig/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key});

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          currentPage: 0,
          image: Assets.imagesOnboarding1,
          title: "Welcome to Marketi",
          subTitle:
              "Discover a world of endless possibilities and shop from the comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.",
          text: "Next",
          onPressed: () {
            pageController.animateToPage(
              1,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        PageViewItem(
          currentPage: 1,
          image: Assets.imagesOnboarding2,
          title: "Easy to Buy",
          subTitle:
              "Find the perfect item that suits your style and needs With secure payment options and fast delivery, shopping has never been easier.",
          text: "Next",
          onPressed: () {
            pageController.animateToPage(
              2,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        PageViewItem(
          currentPage: 2,
          image: Assets.imagesOnboarding3,
          title: "Wonderful User Experience",
          subTitle:
              "Start exploring now and experience the convenience of online shopping at its best.",
          text: "Get Start",
          onPressed: () {
            Navigator.pushReplacementNamed(context, SigninView.routeName);
          },
        ),
      ],
    );
  }
}
