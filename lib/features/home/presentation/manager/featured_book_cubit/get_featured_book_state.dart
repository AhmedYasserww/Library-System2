part of 'get_featured_book_cubit.dart';

@immutable
sealed class GetFeaturedBookState {}

final class GetFeaturedBookInitial extends GetFeaturedBookState {}

final class GetFeaturedBookLoading extends GetFeaturedBookState {}

final class GetFeaturedBookSuccess extends GetFeaturedBookState {
  final List<BookModel> books;
  GetFeaturedBookSuccess({required this.books});
}
final class GetFeaturedBookFailure extends GetFeaturedBookState {
  final String errorMessage;
  GetFeaturedBookFailure({required this.errorMessage});

}