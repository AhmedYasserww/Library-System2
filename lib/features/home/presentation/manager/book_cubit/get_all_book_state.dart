part of 'get_all_book_cubit.dart';

@immutable
sealed class GetAllBookState {}

final class GetAllBookInitial extends GetAllBookState {}
class GetAllBooksLoading extends GetAllBookState {}

class GetAllBooksSuccess extends GetAllBookState {
  final List<BookModel> books;

  GetAllBooksSuccess({required this.books});
}

class GetAllBooksFailure extends GetAllBookState {
  final String errorMessage;

  GetAllBooksFailure({required this.errorMessage});
}
