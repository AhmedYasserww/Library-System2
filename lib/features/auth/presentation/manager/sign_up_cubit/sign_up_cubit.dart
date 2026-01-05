import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/services/shared_preference_service.dart';
import '../../../data/model/AuthModel.dart';
import '../../../data/repos/auth_repo/auth_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;

  Future<void> signUp({
    required String userName,
    required String email,
    required String password,
    required String phoneNumber,
    required String firstName,
    required String lastName,
  }) async {
    emit(SignUpLoading());

    final result = await authRepo.signUp(
      userName: userName,
      email: email,
      password: password,
      phoneNumber: phoneNumber,
      firstName: firstName,
      lastName: lastName,
    );

    result.fold(
          (failure) => emit(SignUpFailure(errorMessage: failure.errorMessage)),
          (authModel) async {

        if (authModel.token != null && authModel.token!.isNotEmpty) {
          await CacheService.saveToken(authModel.token!);
        }

        emit(SignUpSuccess(authModel: authModel));
      },
    );
  }
}


