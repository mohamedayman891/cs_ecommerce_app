part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
  final List<ProductModel> product;

  ProductSuccess(this.product);
}

class ProductFailure extends ProductState {
  final String errMessage;

  ProductFailure(this.errMessage);
}
