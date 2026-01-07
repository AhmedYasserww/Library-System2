import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/services/shared_preference_service.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../home/presentation/views/home_view.dart';
import '../../../../navigation_bar/presentation/views/button_nav_bar_view.dart';
import '../../manager/sign_in_cubit/sign_in_cubit.dart';
import '../sign_up_view.dart';
import 'custom_email_text_field.dart';
import 'custom_navigate_to_register.dart';
import 'custom_password_text_field.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  bool visible = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  void toggleVisibility() {
    setState(() => visible = !visible);
  }

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) async{
        if (state is SignInSuccess) {
          if (state.authModel.isAuthenticated == true) {

            final token = state.authModel.token;
            if (token != null && token.isNotEmpty)  {
              await CacheService.saveToken(token);
            }

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                const SnackBar(
                  content: Text("Login successfully", style: TextStyle(color: Colors.white, fontSize: 16)),
                  backgroundColor: Colors.green,
                ),
              );

            Navigator.pushReplacementNamed(context, ButtonNavBarView.routeName);

          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.authModel.message ?? "Login failed"),
                backgroundColor: Colors.red,
              ),
            );
          }
        }

        else if (state is SignInFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
                backgroundColor: Colors.red,
              ),
            );
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Form(
                    key: formKey,
                    autovalidateMode: autoValidateMode,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        const Text(
                          "Welcome Back to the BookWise",
                          style: Styles.textStyleBold30,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 50),
                        const Text("Email", style: Styles.textStyleBold16),
                        const SizedBox(height: 6),
                        EmailField(emailController: emailController),
                        const SizedBox(height: 18),
                        const Text("Password", style: Styles.textStyleBold16),
                        const SizedBox(height: 6),
                        PasswordField(
                          passwordController: passwordController,
                          visible: visible,
                          toggleVisibility: toggleVisibility,
                        ),
                        const SizedBox(height: 32),
                        CustomButton(
                          text: "Log in",
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              context.read<SignInCubit>().signIn(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                              );
                            } else {
                              setState(() {
                                autoValidateMode = AutovalidateMode.always;
                              });
                            }
                          },
                        ),
                        const SizedBox(height: 14),
                        CustomNavigateToRegister(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(SignUpView.routeName);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (state is SignInLoading)
              Container(
                color: Colors.black.withOpacity(0.4),
                child: const Center(
                  child: CircularProgressIndicator(color: Colors.blue),
                ),
              ),
          ],
        );
      },
    );
  }
}
