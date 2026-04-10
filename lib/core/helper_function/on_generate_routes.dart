import 'package:cs_ecommerce_app/core/helper_function/sevice_locator.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/Signup_view.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/congratulations.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/create_new_password.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/forget_password_with_email.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/forget_password_with_phone.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/signin_view.dart';
import 'package:cs_ecommerce_app/features/auth/presentation/views/widgets/verification_code_with_phone.dart';
import 'package:cs_ecommerce_app/features/home/data/repo/home_repo.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/brand/brand_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/category/category_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/product/product_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/best_for_you_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/brands_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/buy_again_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/cart_is_empty_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/cart_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/categories_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/favorites_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/home_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/log_in_validation_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/main_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/menu_view.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/popular_product_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/search_not_found_page.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/success_order_page.dart';
import 'package:cs_ecommerce_app/features/on_boardig/presentation/views/on_boarding_view.dart';
import 'package:cs_ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    case ForgetPasswordWithPhone.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgetPasswordWithPhone(),
      );
    case ForgetPasswordWithEmail.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgetPasswordWithEmail(),
      );
    case VerificationCodeWithPhone.routeName:
      return MaterialPageRoute(
        builder: (context) => const VerificationCodeWithPhone(),
      );
    // case VerificationCodeWithEmail.routeName:
    //   return MaterialPageRoute(
    //     builder: (context) => const VerificationCodeWithEmail(),
    //   );
    case CreateNewPassword.routeName:
      return MaterialPageRoute(builder: (context) => const CreateNewPassword());
    case Congratulations.routeName:
      return MaterialPageRoute(builder: (context) => const Congratulations());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case LogInValidationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const LogInValidationPage(),
      );
    case SuccessOrderPage.routeName:
      return MaterialPageRoute(builder: (context) => const SuccessOrderPage());
    case CartIsEmptyPage.routeName:
      return MaterialPageRoute(builder: (context) => const CartIsEmptyPage());
    case BrandsPage.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => BrandCubit(getIt.get<HomeRepo>()),
          child: const BrandsPage(),
        ),
      );
    case BestForYouPage.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => ProductCubit(getIt.get<HomeRepo>()),
          child: const BestForYouPage(),
        ),
      );
    case BuyAgainPage.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => ProductCubit(getIt.get<HomeRepo>()),
          child: const BuyAgainPage(),
        ),
      );
    case CategoriesPage.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => CategoryCubit(getIt.get<HomeRepo>()),
          child: const CategoriesPage(),
        ),
      );
    case SearchNotFoundPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const SearchNotFoundPage(),
      );
    case PopularProductPage.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => ProductCubit(getIt.get<HomeRepo>()),
          child: const PopularProductPage(),
        ),
      );
    case CartView.routeName:
      return MaterialPageRoute(builder: (context) => const CartView());
    case FavoritesView.routeName:
      return MaterialPageRoute(builder: (context) => const FavoritesView());
    case MenuView.routeName:
      return MaterialPageRoute(builder: (context) => const MenuView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
