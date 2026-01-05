import 'package:dartz/dartz.dart';

import '../../../../../core/errors/faluire.dart';
import '../../../../../core/services/api_service.dart';
import '../../models/category_model.dart';
import 'category_repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  final ApiService apiService;

  CategoryRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<CategoryModel>>> fetchCategories() async {
    try {
      final response = await apiService.get(endPoint: "Category");

      print("========== CATEGORY RESPONSE START ==========");
      print(response);
      print("=========== CATEGORY RESPONSE END ===========");

      if (response is List) {
        final categories = response
            .map((e) => CategoryModel.fromJson(e))
            .toList();

        return Right(categories);
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
}
