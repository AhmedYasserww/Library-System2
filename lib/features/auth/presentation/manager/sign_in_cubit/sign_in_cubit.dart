import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/AuthModel.dart';
import '../../../data/repos/auth_repo/auth_repo.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());

  final AuthRepo authRepo;
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    emit(SignInLoading());

    final result = await authRepo.signIn(
      email: email,
      password: password,
    );

    result.fold(
          (failure) => emit(SignInFailure(errorMessage: failure.errorMessage)),
          (authModel) => emit(SignInSuccess(authModel: authModel)),
    );
  }
}
