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
    required String firstName,
    required String lastName,
  }) async {
    try {
      final response = await apiService.post(
        endPoint: "Account/register",
        data: {
          "username": userName,
          "email": email,
          "password": password,
          "phoneNumber": phoneNumber,
          "firstName": firstName,
          "lastName": lastName,
        },
      );

      print("REGISTER RESPONSE => $response");

      if (response is Map && response["success"] == true) {
        final data = response["data"];
        return Right(AuthModel.fromJson(Map<String, dynamic>.from(data)));
      } else {
        String errorMessage = "Registration failed";
        if (response is Map) {
          if (response["message"] != null && response["message"]
              .toString()
              .isNotEmpty) {
            errorMessage = response["message"].toString();
          } else if (response["errors"] != null && response["errors"] is List) {
            errorMessage = (response["errors"] as List).join("\n");
          }
        }

        return Left(ServerFailure(errorMessage: errorMessage));
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: "Unexpected error"));
    }
  }

  @override
  Future<Either<Failure, AuthModel>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await apiService.post(
        endPoint: "Account/login",
        data: {
          "email": email,
          "password": password,
        },
      );

      print("LOGIN RESPONSE => $response");

      if (response is Map && response["success"] == true) {
        final data = response["data"];
        return Right(AuthModel.fromJson(Map<String, dynamic>.from(data)));
      } else {
        String errorMessage = "Login failed";
        if (response is Map) {
          if (response["message"] != null && response["message"]
              .toString()
              .isNotEmpty) {
            errorMessage = response["message"].toString();
          } else if (response["errors"] != null && response["errors"] is List) {
            errorMessage = (response["errors"] as List).join("\n");
          }
        }

        return Left(ServerFailure(errorMessage: errorMessage));
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: "Unexpected error"));
    }
  }


}
