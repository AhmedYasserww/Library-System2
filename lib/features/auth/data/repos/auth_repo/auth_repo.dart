import 'package:dartz/dartz.dart';

import '../../../../../core/errors/faluire.dart';
import '../../model/AuthModel.dart';


abstract class AuthRepo {
  Future<Either<Failure, AuthModel>> signUp({
    required String userName,
    required String email,
    required String password,
    required String phoneNumber,
    required String firstName,
    required String lastName,
  });

  Future<Either<Failure, AuthModel>> signIn({
    required String email,
    required String password,
  });
}
