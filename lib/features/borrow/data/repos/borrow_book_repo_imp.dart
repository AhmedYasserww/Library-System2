import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../core/errors/faluire.dart';
import '../../../../../core/services/api_service.dart';
import '../../../../core/services/shared_preference_service.dart';
import '../models/borrow_book_model.dart';
import 'borrow_book_repo.dart';

class BorrowBookRepoImpl implements BorrowBookRepo {
  final ApiService apiService;

  BorrowBookRepoImpl({required this.apiService});

  @override
  @override
  Future<Either<Failure, BorrowBookModel>> borrowBook({required int bookId}) async {
    try {
      final token = await CacheService.getToken();
      if (token == null) {
        return Left(ServerFailure(errorMessage: "User not authenticated"));
      }

      final response = await apiService.post(
        endPoint: "Borrow",
        data: {"bookId": bookId},
        headers: {
          "Authorization": "Bearer $token",
          "Content-Type": "application/json",
        },
      );

      if (response is Map && response.containsKey("id")) {
        return Right(
          BorrowBookModel.fromJson(Map<String, dynamic>.from(response)),
        );
      }

      if (response is Map && response["success"] == false) {
        final message = response["message"]?.toString() ?? "Borrow failed";
        return Left(ServerFailure(errorMessage: message));
      }


      return Left(ServerFailure(errorMessage: "Unexpected response from server"));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: "Unexpected error"));
    }
  }

}
