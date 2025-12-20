import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_system4/features/auth/presentation/views/widgets/sign_up_view_body.dart';

import '../../../../core/service_locator/service_locator.dart';
import '../../data/repos/auth_repo/auth_repo_imp.dart';
import '../manager/sign_up_cubit/sign_up_cubit.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
static const String routeName = 'sign-up';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpCubit(getIt.get<AuthRepoImpl>() ),
      child: const Scaffold(
        body: SafeArea(child: SignUpViewBody()),
      ),
    );
  }
}
