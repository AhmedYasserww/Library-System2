import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/BookModel.dart';
import '../../../data/repos/book_repo/book_repo.dart';

part 'get_featured_book_state.dart';

class GetFeaturedBookCubit extends Cubit<GetFeaturedBookState> {
  GetFeaturedBookCubit(this.bookRepo) : super(GetFeaturedBookInitial());
  final BookRepo bookRepo;

  Future<void> fetchFeaturedBooks() async {
    print("FETCH BOOKS CALLED");
    emit(GetFeaturedBookLoading());

    final result = await bookRepo.fetchFeaturedBooks();

    result.fold(
          (failure) {
        print("BOOK FAILURE => ${failure.errorMessage}");
        emit(GetFeaturedBookFailure(errorMessage: failure.errorMessage));
      },
          (books) {
        print("BOOK SUCCESS => ${books.length}");
        emit(GetFeaturedBookSuccess(books: books));
      },
    );
  }
}
