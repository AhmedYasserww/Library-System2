import 'package:dartz/dartz.dart';

import '../../../../../core/errors/faluire.dart';
import '../../models/category_model.dart';



abstract class CategoryRepo {
  Future<Either<Failure, List<CategoryModel>>> fetchCategories();
}