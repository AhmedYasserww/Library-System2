import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/user_profile_model.dart';
import '../../data/repos/profile_repo.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo repo;

  ProfileCubit(this.repo) : super(ProfileInitial());

  Future<void> fetchProfile() async {
    emit(ProfileLoading());

    final result = await repo.getProfile();

    result.fold(
          (failure) {
        emit(ProfileFailure(errorMessage: failure.errorMessage));
      },
          (profile) {
        emit(ProfileSuccess(userProfileModel: profile));
      },
    );
  }
}
