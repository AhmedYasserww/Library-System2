part of 'get_favorite_book_cubit.dart';

@immutable
sealed class GetFavoriteBookState {}

final class GetFavoriteBookInitial extends GetFavoriteBookState {}
final class GetFavoriteBookLoading extends GetFavoriteBookState {}
final class GetFavoriteBookSuccess extends GetFavoriteBookState {
  final List<BookModel> favoriteBooks;

  GetFavoriteBookSuccess({required this.favoriteBooks});
}
final class GetFavoriteBookFailure extends GetFavoriteBookState {
  final String errorMessage;

  GetFavoriteBookFailure({required this.errorMessage});
}
