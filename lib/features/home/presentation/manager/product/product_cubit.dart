import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:cs_ecommerce_app/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.homeRepo) : super(ProductInitial());
  final HomeRepo homeRepo;
  Future<void> getProduct() async {
    emit(ProductLoading());
    var result = await homeRepo.getProducts();
    result.fold(
      (failure) {
        if (!isClosed) {
          emit(ProductFailure(failure.message));
        }
      },
      (product) {
        if (!isClosed) {
          emit(ProductSuccess(product));
        }
      },
    );
  }
}
