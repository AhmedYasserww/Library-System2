import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

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
  }) async {
    emit(SignUpLoading());

    final result = await authRepo.signUp(
      userName: userName,
      email: email,
      password: password,
      phoneNumber: phoneNumber,
    );

    result.fold((failure) => emit(SignUpFailure(errorMessage: failure.errorMessage)),
            (authModel) => emit(SignUpSuccess(authModel: authModel)));
  }
}


