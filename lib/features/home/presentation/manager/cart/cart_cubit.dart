import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final List<ProductModel> cart = [];
  List<ProductModel> get cartItems => cart;

  void addToCart(ProductModel product) {
    cart.add(product);
    emit(CartAdded(List.from(cart)));
  }

  void deleteProduct(ProductModel product) {
    final item = cartItems.firstWhere((e) => e.title == product.title);
    cartItems.remove(item);
    emit(CartUpdated());
  }
}
