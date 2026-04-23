import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:meta/meta.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());

  final List<ProductModel> favorite = [];

  List<ProductModel> get favoriteItem => favorite;

  void toggleFavorite(ProductModel product) {
    final isExist = favorite.any((item) => item.id == product.id);

    if (isExist) {
      favorite.removeWhere((item) => item.id == product.id);
      emit(FavoriteRemoved(List.from(favorite)));
    } else {
      favorite.add(product);
      emit(FavoriteAdded(List.from(favorite)));
    }
  }

  bool isFavorite(ProductModel product) {
    return favorite.any((item) => item.id == product.id);
  }
}
