import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_system4/features/auth/presentation/manager/sign_in_cubit/sign_in_cubit.dart';
import 'package:library_system4/features/auth/presentation/views/widgets/Sign_in_view_body.dart';

import '../../../../core/service_locator/service_locator.dart';
import '../../data/repos/auth_repo/auth_repo_imp.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const String routeName = 'log-in';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignInCubit(getIt.get<AuthRepoImpl>() ),
      child: const Scaffold(
        body: SafeArea(child: SignInViewBody()),
      ),
    );
  }
}
