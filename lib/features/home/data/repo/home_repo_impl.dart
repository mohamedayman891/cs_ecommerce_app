import 'package:cs_ecommerce_app/core/api/api_consumer.dart';
import 'package:cs_ecommerce_app/core/api/end_ponits.dart';
import 'package:cs_ecommerce_app/core/cache/cache_helper.dart';
import 'package:cs_ecommerce_app/core/errors/exceptions.dart';
import 'package:cs_ecommerce_app/core/errors/failure.dart';
import 'package:cs_ecommerce_app/features/home/data/models/brand_model.dart';
import 'package:cs_ecommerce_app/features/home/data/models/category_model.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:cs_ecommerce_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiConsumer apiConsumer;

  HomeRepoImpl(this.apiConsumer);
  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      var response = await apiConsumer.get(EndPoint.product);
      List<ProductModel> products = (response['list'] as List)
          .map((e) => ProductModel.fromJson(e))
          .toList();
      final token = response['token'];
      await CacheHelper().saveData(key: ApiKey.token, value: token);
      print(products);
      return Right(products);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getCategories() async {
    try {
      var response = await apiConsumer.get(EndPoint.category);
      List<CategoryModel> categories = (response['list'] as List)
          .map((e) => CategoryModel.fromJson(e))
          .toList();
      print(categories);
      return Right(categories);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BrandModel>>> getBrands() async {
    try {
      var response = await apiConsumer.get(EndPoint.category);
      List<BrandModel> brands = (response['list'] as List)
          .map((e) => BrandModel.fromJson(e))
          .toList();
      print(brands);
      return Right(brands);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
