import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/home/data/models/category_model.dart';
import 'package:cs_ecommerce_app/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.homeRepo) : super(CategoryInitial());
  final HomeRepo homeRepo;
  Future<void> getCategory() async {
    emit(CategoryLoading());
    var result = await homeRepo.getCategories();
    result.fold(
      (failure) {
        if (!isClosed) {
          emit(CategoryFailure(failure.message));
        }
      },
      (category) {
        if (!isClosed) {
          emit(CategorySuccess(category));
        }
      },
    );
  }
}
