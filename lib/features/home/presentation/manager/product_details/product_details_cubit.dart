import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:meta/meta.dart';

part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit() : super(ProductDetailsInitial());

  void selectProduct(ProductModel product) {
    emit(ProductDetailsLoaded(product));
  }
}
