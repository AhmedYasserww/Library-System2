import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/BookModel.dart';
import '../../../data/repos/book_repo/book_repo.dart';

part 'get_all_book_state.dart';

class GetAllBookCubit extends Cubit<GetAllBookState> {
  GetAllBookCubit(this.bookRepo) : super(GetAllBookInitial());
  final BookRepo bookRepo;

  Future<void> fetchBooks() async {
    print("FETCH BOOKS CALLED");
    emit(GetAllBooksLoading());

    final result = await bookRepo.fetchBooks();

    result.fold(
          (failure) {
        print("BOOK FAILURE => ${failure.errorMessage}");
        emit(GetAllBooksFailure(errorMessage: failure.errorMessage));
      },
          (books) {
        print("BOOK SUCCESS => ${books.length}");
        emit(GetAllBooksSuccess(books: books));
      },
    );
  }
}
