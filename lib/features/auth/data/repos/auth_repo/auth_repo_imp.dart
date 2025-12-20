import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../core/errors/faluire.dart';
import '../../../../../core/services/api_service.dart';
import '../../model/AuthModel.dart';
import 'auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;

  AuthRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, AuthModel>> signUp({
    required String userName,
    required String email,
    required String password,
    required String phoneNumber,
  }) async {
    try {
      final response = await apiService.post(
        endPoint: "Account/register",
        data: {
          "username": userName,
          "email": email,
          "password": password,
          "phoneNumber": phoneNumber,
        },
      );


      if (response["isAuthenticated"] == true) {
        return Right(AuthModel.fromJson(response));
      }
      final String errorMessage =
          response["message"] ?? "Registration failed";

      return Left(ServerFailure(errorMessage: errorMessage));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: "Unexpected error"));
    }
  }
}
