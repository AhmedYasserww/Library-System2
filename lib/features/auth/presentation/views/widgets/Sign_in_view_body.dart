import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/styles.dart';
import 'package:library_system4/core/widgets/custom_button.dart';
import 'package:library_system4/features/auth/presentation/views/sign_up_view.dart';
import 'package:library_system4/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:library_system4/features/auth/presentation/views/widgets/custom_navigate_to_register.dart';
import 'package:library_system4/features/auth/presentation/views/widgets/custom_password_text_field.dart';
import 'package:library_system4/features/navigation_bar/presentation/views/button_nav_bar_view.dart';
class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  bool visible = true;
  bool rememberMe = false;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  void toggleVisibility() {
    setState(() {
      visible = !visible;
    });
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

  void showErrorMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
        return Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Form(
                key: formKey,
                autovalidateMode: autoValidateMode,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Welcome Back to the BookWise",style: Styles.textStyleBold30,textAlign: TextAlign.center,),
                    const SizedBox(height: 50,),
                    const Text("Email",style: Styles.textStyleBold16,),
                    const SizedBox(height: 6,),
                    EmailField(emailController: emailController,),
                    const SizedBox(height: 18),
                    const Text("Password",style: Styles.textStyleBold16,),
                    const SizedBox(height: 6,),
                    PasswordField(
                      passwordController: passwordController,
                      visible: visible,
                      toggleVisibility: toggleVisibility,
                    ),
                    const SizedBox(height: 32),
                    CustomButton(
                      text: "Log in",
                      onTap: (){
                        Navigator.of(context).pushNamed(ButtonNavBarView.routeName);

                      }
                    ),
                    const SizedBox(height: 14),
                    CustomNavigateToRegister(
                      onPressed: () {
                        Navigator.of(context).pushNamed(SignUpView.routeName);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );

  }
}
