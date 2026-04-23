import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/home/data/models/cart_item_model.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final List<CartItemModel> cart = [];

  List<CartItemModel> get cartItems => cart;

  // ================= ADD =================
  void addToCart(ProductModel product) {
    final index = cart.indexWhere((item) => item.product.id == product.id);

    if (index != -1) {
      cart[index].quantity++;
    } else {
      cart.add(CartItemModel(product: product));
    }

    emit(CartUpdated());
  }

  // ================= INCREASE =================
  void increase(ProductModel product) {
    final index = cart.indexWhere((item) => item.product.id == product.id);

    cart[index].quantity++;
    emit(CartUpdated());
  }

  // ================= DECREASE =================
  void decrease(ProductModel product) {
    final index = cart.indexWhere((item) => item.product.id == product.id);

    if (cart[index].quantity > 1) {
      cart[index].quantity--;
    } else {
      cart.removeAt(index);
    }

    emit(CartUpdated());
  }

  // ================= DELETE =================
  void deleteProduct(ProductModel product) {
    cart.removeWhere((item) => item.product.id == product.id);
    emit(CartUpdated());
  }

  // ================= TOTAL =================
  double getTotalPrice() {
    return cart.fold(
      0,
      (total, item) => total + item.product.price * item.quantity,
    );
  }

  int getTotalItems() {
    return cart.fold(0, (total, item) => total + item.quantity);
  }

  int getQuantity(ProductModel product) {
    final index = cart.indexWhere((item) => item.product.id == product.id);

    if (index == -1) return 1;
    return cart[index].quantity;
  }
}
