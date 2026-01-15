import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_system4/features/profile/data/repos/profile_repo_imp.dart';
import 'package:library_system4/features/profile/presentation/manager/profile_cubit.dart';
import 'package:library_system4/features/profile/presentation/views/widgets/profile_view_body.dart';

import '../../../../core/service_locator/service_locator.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const String routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileCubit(getIt.get<ProfileRepoImpl>() )..fetchProfile(),

      child: Scaffold(
          appBar: CustomAppBar(title: "Your Profile ",style: Styles.textStyleBold24.copyWith(color: AppColors.buttonColor),),
        body:ProfileViewBody()
      ),
    );
  }
}
