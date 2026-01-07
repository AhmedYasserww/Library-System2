import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../../core/errors/faluire.dart';
import '../../data/repos/borrow_book_repo.dart';

part 'borrow_book_state.dart';

class BorrowBookCubit extends Cubit<BorrowBookState> {
  final BorrowBookRepo repo;

  BorrowBookCubit( this.repo) : super(BorrowBookInitial());

  Future<void> borrowBook(int bookId) async {
    emit(BorrowBookLoading());

    final result = await repo.borrowBook(bookId: bookId);

    result.fold(
          (failure) => emit(BorrowBookFailure(errorMessage: failure.errorMessage)),
          (borrowedBook) => emit(BorrowBookSuccess(message: "Book borrowed successfully!")),
    );
  }
}
