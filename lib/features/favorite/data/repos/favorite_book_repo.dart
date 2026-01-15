import 'package:dartz/dartz.dart';
import '../../../../../core/errors/faluire.dart';
import '../../../home/data/models/BookModel.dart';

abstract class FavoriteBookRepo {
  Future<Either<Failure, List<BookModel>>> getFavorites();
}
