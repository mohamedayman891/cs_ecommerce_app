part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategorySuccess extends CategoryState {
  final List<CategoryModel> category;

  CategorySuccess(this.category);
}

class CategoryFailure extends CategoryState {
  final String errMessage;

  CategoryFailure(this.errMessage);
}
