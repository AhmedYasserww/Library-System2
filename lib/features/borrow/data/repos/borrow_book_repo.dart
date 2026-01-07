import 'package:dartz/dartz.dart';
import '../../../../../../core/errors/faluire.dart';
import '../models/borrow_book_model.dart';

abstract class BorrowBookRepo {
  Future<Either<Failure, BorrowBookModel>> borrowBook({required int bookId});
}
