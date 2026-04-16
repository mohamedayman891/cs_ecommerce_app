part of 'product_details_cubit.dart';

@immutable
sealed class ProductDetailsState {}

class ProductDetailsInitial extends ProductDetailsState {}

class ProductDetailsLoaded extends ProductDetailsState {
  final ProductModel product;

  ProductDetailsLoaded(this.product);
}
