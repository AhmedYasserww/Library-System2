import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../home/data/models/BookModel.dart';
import '../../../data/repos/favorite_book_repo.dart';
part 'get_favorite_book_state.dart';

class GetFavoriteBookCubit extends Cubit<GetFavoriteBookState> {
  final FavoriteBookRepo repo;

  GetFavoriteBookCubit(this.repo) : super(GetFavoriteBookInitial());

  Future<void> fetchFavorites() async {
    emit(GetFavoriteBookLoading());

    final result = await repo.getFavorites();

    result.fold(
          (failure) => emit(GetFavoriteBookFailure(errorMessage: failure.errorMessage)),
          (books) => emit(GetFavoriteBookSuccess(favoriteBooks: books)),
    );
  }
}
