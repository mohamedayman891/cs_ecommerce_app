part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}

class CartUpdated extends CartState {}

class CartAdded extends CartState {
  final List<ProductModel> cartItems;

  CartAdded(this.cartItems);
}
