part of 'borrow_book_cubit.dart';

@immutable
sealed class BorrowBookState {}

final class BorrowBookInitial extends BorrowBookState {}

final class BorrowBookLoading extends BorrowBookState {}

final class BorrowBookSuccess extends BorrowBookState {
  final String message;

  BorrowBookSuccess({required this.message});
}

final class BorrowBookFailure extends BorrowBookState {
  final String errorMessage;

  BorrowBookFailure({required this.errorMessage});
}
