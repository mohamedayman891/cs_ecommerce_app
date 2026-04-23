part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductPaginationLoading extends ProductState {}

class ProductSuccess extends ProductState {
  final List<ProductModel> products;
  ProductSuccess(this.products);
}

class ProductFailure extends ProductState {
  final String errMessage;

  ProductFailure(this.errMessage);
}

class ProductPaginationFailure extends ProductState {
  final String errMessage;
  ProductPaginationFailure(this.errMessage);
}
