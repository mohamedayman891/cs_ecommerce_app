part of 'brand_cubit.dart';

@immutable
sealed class BrandState {}

class BrandInitial extends BrandState {}

class BrandLoading extends BrandState {}

class BrandSuccess extends BrandState {
  final List<BrandModel> brand;

  BrandSuccess(this.brand);
}

class BrandFailure extends BrandState {
  final String errMessage;

  BrandFailure(this.errMessage);
}
