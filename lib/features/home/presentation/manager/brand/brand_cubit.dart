import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/home/data/models/brand_model.dart';
import 'package:cs_ecommerce_app/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'brand_state.dart';

class BrandCubit extends Cubit<BrandState> {
  BrandCubit(this.homeRepo) : super(BrandInitial());
  final HomeRepo homeRepo;
  Future<void> getBrand() async {
    emit(BrandLoading());
    var result = await homeRepo.getBrands();
    result.fold(
      (failure) {
        if (!isClosed) {
          emit(BrandFailure(failure.message));
        }
      },
      (brand) {
        if (!isClosed) {
          emit(BrandSuccess(brand));
        }
      },
    );
  }
}
