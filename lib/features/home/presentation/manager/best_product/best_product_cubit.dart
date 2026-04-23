import 'package:bloc/bloc.dart';
import 'package:cs_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:cs_ecommerce_app/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';
part 'best_product_state.dart';

class BestProductCubit extends Cubit<BestProductState> {
  BestProductCubit(this.homeRepo) : super(BestProductInitial());

  final HomeRepo homeRepo;

  List<ProductModel> allProducts = []; // 🔥 الأصل
  List<ProductModel> filteredProducts = []; // 🔥 المعروض

  String searchQuery = "";
  bool isAscending = true;

  // ================= GET =================
  Future<void> getBestProduct() async {
    emit(BestProductLoading());

    final result = await homeRepo.getBestProducts();

    result.fold(
      (failure) {
        emit(BestProductFailure(failure.message));
      },
      (products) {
        allProducts = products; // ✅ خزّن الأصل
        applyFilters();
        emit(BestProductSuccess(allProducts));
      },
    );
  }

  // ================= FILTER =================
  void applyFilters() {
    // 👇 نبدأ من الأصل دايمًا
    filteredProducts = List.from(allProducts);
    // 🔍 Search
    if (searchQuery.isNotEmpty) {
      filteredProducts = filteredProducts.where((product) {
        return product.title.toLowerCase().contains(searchQuery.toLowerCase());
      }).toList();
    }
    // 🔽 Sort
    if (isAscending) {
      filteredProducts.sort((a, b) => a.price.compareTo(b.price));
    } else {
      filteredProducts.sort((a, b) => b.price.compareTo(a.price));
    }
  }

  // ================= ACTIONS =================
  void searchProduct(String query) {
    searchQuery = query;
    applyFilters();
    emit(BestProductSuccess(filteredProducts));
  }

  void clearSearch() {
    searchQuery = "";
    applyFilters();
    emit(BestProductSuccess(filteredProducts));
  }

  void toggleSortByPrice() {
    isAscending = !isAscending;
    applyFilters();
    emit(BestProductSuccess(filteredProducts));
  }
}
