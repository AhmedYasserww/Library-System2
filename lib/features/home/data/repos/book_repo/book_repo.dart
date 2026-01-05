import 'package:dartz/dartz.dart';
import '../../../../../core/errors/faluire.dart';
import '../../models/BookModel.dart';

abstract class BookRepo {
  Future<Either<Failure, List<BookModel>>> fetchBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
