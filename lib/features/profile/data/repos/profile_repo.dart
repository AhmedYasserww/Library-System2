import 'package:dartz/dartz.dart';
import '../../../../core/errors/faluire.dart';
import '../models/user_profile_model.dart';

abstract class ProfileRepo {
  Future<Either<Failure, UserProfileModel>> getProfile();
}
