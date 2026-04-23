part of 'favorite_cubit.dart';

@immutable
sealed class FavoriteState {}

class FavoriteInitial extends FavoriteState {}

class FavoriteUpdated extends FavoriteState {}

class FavoriteAdded extends FavoriteState {
  final List<ProductModel> favorites;

  FavoriteAdded(this.favorites);
}

class FavoriteRemoved extends FavoriteState {
  final List<ProductModel> favorites;
  FavoriteRemoved(this.favorites);
}
