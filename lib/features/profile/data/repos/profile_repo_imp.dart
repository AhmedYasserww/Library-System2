import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/faluire.dart';
import '../../../../core/services/api_service.dart';
import '../../../../core/services/shared_preference_service.dart';
import '../models/user_profile_model.dart';
import 'profile_repo.dart';

class ProfileRepoImpl implements ProfileRepo {
  final ApiService apiService;

  ProfileRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, UserProfileModel>> getProfile() async {
    try {
      final token = await CacheService.getToken();

      if (token == null) {
        return Left(ServerFailure(errorMessage: "User not authenticated"));
      }

      final response = await apiService.get(
        endPoint: "User/profile",
        headers: {
          "Authorization": "Bearer $token",
        },
      );

      if (response is Map) {
        return Right(UserProfileModel.fromJson(Map<String, dynamic>.from(response)));
      }

      return Left(ServerFailure(errorMessage: "Invalid server response"));

    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: "Unexpected error"));
    }
  }
}
