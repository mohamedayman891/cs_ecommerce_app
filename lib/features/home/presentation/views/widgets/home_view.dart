import 'package:cs_ecommerce_app/core/helper_function/sevice_locator.dart';
import 'package:cs_ecommerce_app/features/home/data/repo/home_repo.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/brand/brand_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/category/category_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/manager/product/product_cubit.dart';
import 'package:cs_ecommerce_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = "HomeView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeViewBody());
  }
}
