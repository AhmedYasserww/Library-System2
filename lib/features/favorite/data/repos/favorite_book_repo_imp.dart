import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../core/errors/faluire.dart';
import '../../../../../core/services/api_service.dart';
import '../../../../core/services/shared_preference_service.dart';
import '../../../home/data/models/BookModel.dart';
import 'favorite_book_repo.dart';

class FavoriteBookRepoImpl implements FavoriteBookRepo {
  final ApiService apiService;

  FavoriteBookRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> getFavorites() async {
    try {
      final token = await CacheService.getToken();
      if (token == null) {
        return Left(ServerFailure(errorMessage: "User not authenticated"));
      }

      final response = await apiService.get(
        endPoint: "Favorite",
        headers: {
          "Authorization": "Bearer $token",
          "Content-Type": "application/json",
        },
      );

      if (response is List) {
        final books =
        response.map((bookJson) => BookModel.fromJson(bookJson)).toList();
        return Right(books);
      } else {
        return Left(ServerFailure(errorMessage: "Unexpected response format"));
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
