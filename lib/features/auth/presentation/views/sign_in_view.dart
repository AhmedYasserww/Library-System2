import 'package:flutter/material.dart';
import 'package:library_system4/features/auth/presentation/views/widgets/Sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const String routeName = 'log-in';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SignInViewBody()),
    );
  }
}
