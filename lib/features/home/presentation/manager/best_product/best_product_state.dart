part of 'best_product_cubit.dart';

@immutable
sealed class BestProductState {}

class BestProductInitial extends BestProductState {}

class BestProductLoading extends BestProductState {}

class BestProductSuccess extends BestProductState {
  final List<ProductModel> products;

  BestProductSuccess(this.products);
}

class BestProductFailure extends BestProductState {
  final String errMessage;
  BestProductFailure(this.errMessage);
}
