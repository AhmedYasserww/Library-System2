import 'package:dartz/dartz.dart';
import '../../../../../core/errors/faluire.dart';
import '../../../../../core/services/api_service.dart';
import '../../models/BookModel.dart';
import 'book_repo.dart';

class BookRepoImpl implements BookRepo {
  final ApiService apiService;

  BookRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooks() async {
    try {
      final response = await apiService.get(endPoint: "Book");

      print("========== BOOK RESPONSE START ==========");
      print(response);
      print("=========== BOOK RESPONSE END ===========");

      if (response is List) {
        final books = response
            .map((e) => BookModel.fromJson(e))
            .toList();

        return Right(books);
      } else {
        return Left(
          ServerFailure(errorMessage: "Unexpected response format"),
        );
      }
    } catch (e) {
      return Left(
        ServerFailure(errorMessage: e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try {
      final response = await apiService.get(endPoint: "Book/recommended");

      print("========== BOOK RESPONSE Featured START ==========");
      print(response);
      print("=========== BOOK RESPONSE Featured END ===========");

      if (response is List) {
        final books = response
            .map((e) => BookModel.fromJson(e))
            .toList();

        return Right(books);
      } else {
        return Left(
          ServerFailure(errorMessage: "Unexpected response featured format"),
        );
      }
    } catch (e) {
      return Left(
        ServerFailure(errorMessage: e.toString()),
      );
    }

  }
}
