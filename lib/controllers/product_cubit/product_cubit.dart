import 'package:bloc/bloc.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  bool showDesc = false;
  bool showReviews = false;
  bool showSimilarProduct = true;
  bool isFavorite = false;

  isShowDesc() {
    if (showDesc) {
      showDesc = false;
      emit(IgnoreShowDesc());
    } else {
      showDesc = true;
      emit(ShowDesc());
    }
  }

  isShowReviews() {
    if (showReviews) {
      showReviews = false;

      emit(IgnorShowReviews());
    } else {
      showReviews = true;

      emit(ShowReviews());
    }
  }

  isShowSimilarProduct() {
    if (showSimilarProduct) {
      showSimilarProduct = false;

      emit(IgnorSimilarProduct());
    } else {
      showSimilarProduct = true;

      emit(ShowSimilarProduct());
    }
  }

  isFavoriterProduct() {
    if (isFavorite) {
      isFavorite = false;

      emit(RemoveFromFavorites());
    } else {
      isFavorite = true;
      emit(AddToFavorites());
    }
  }
}
