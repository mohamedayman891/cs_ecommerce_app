import 'package:cs_ecommerce_app/core/errors/failure.dart';
import 'package:cs_ecommerce_app/features/home/data/models/brand_model.dart';
import 'package:cs_ecommerce_app/features/home/data/models/category_model.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> getProducts();
  Future<Either<Failure, List<CategoryModel>>> getCategories();
  Future<Either<Failure, List<BrandModel>>> getBrands();
}
