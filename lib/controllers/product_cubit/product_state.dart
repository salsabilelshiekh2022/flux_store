part of 'product_cubit.dart';

sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ShowDesc extends ProductState {}

final class IgnoreShowDesc extends ProductState {}

final class ShowReviews extends ProductState {}

final class IgnorShowReviews extends ProductState {}

final class ShowSimilarProduct extends ProductState {}

final class IgnorSimilarProduct extends ProductState {}

final class AddToFavorites extends ProductState {}

final class RemoveFromFavorites extends ProductState {}
