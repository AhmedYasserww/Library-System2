import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_system4/core/widgets/custom_button.dart';
import 'package:library_system4/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:library_system4/features/auth/presentation/views/widgets/custom_password_text_field.dart';
import 'package:library_system4/features/auth/presentation/views/widgets/cutom_name_text_field.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../navigation_bar/presentation/views/button_nav_bar_view.dart';
import '../../manager/sign_up_cubit/sign_up_cubit.dart';
import 'custom_first_and_last_name_field.dart';
import 'custom_phone_number_text_field.dart';
class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool visiblePassword = true;
  bool visibleConfirmPassword = true;

  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneNumberController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  void togglePasswordVisibility() {
    setState(() => visiblePassword = !visiblePassword);
  }

  void toggleConfirmPasswordVisibility() {
    setState(() => visibleConfirmPassword = !visibleConfirmPassword);
  }

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneNumberController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
        return  BlocConsumer<SignUpCubit, SignUpState>(
          listener: (context, state) {
            if (state is SignUpSuccess) {
              final successMessage = state.authModel.isAuthenticated == true
                  ? "Register successfully"
                  : state.authModel.message ?? "Register failed";

              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(successMessage),
                    backgroundColor: state.authModel.isAuthenticated == true
                        ? Colors.green
                        : Colors.red,
                  ),
                );

              if (state.authModel.isAuthenticated == true) {
                Navigator.pushReplacementNamed(context, ButtonNavBarView.routeName);
              }
            } else if (state is SignUpFailure) {
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: const Text("Create Your account",style: Styles.textStyleBold30,)),
                            const SizedBox(height: 12,),
                             Text("Join BookWise and start your reading journey today",style: Styles.textStyleBold16.copyWith(color: Colors.grey),textAlign: TextAlign.center,),
                            const SizedBox(height: 32,),
                            const Text("Full Name", style: Styles.textStyleBold16),
                            const SizedBox(height: 6),
                            FirstLastNameFields(
                              firstNameController: firstNameController,
                              lastNameController: lastNameController,
                            ),
                            const SizedBox(height: 14),
                            const Text("Username", style: Styles.textStyleBold16),
                            const SizedBox(height: 6),
                            NameField(nameController: nameController),
                            const SizedBox(height: 14),
                            const Text("phone number",style: Styles.textStyleBold16,),
                            const SizedBox(height: 6,),
                            PhoneNumberField(phoneNumberController: phoneNumberController),
                            const SizedBox(height: 14),
                            const Text("Email",style: Styles.textStyleBold16,),
                            const SizedBox(height: 6,),
                            EmailField(emailController: emailController),
                            const SizedBox(height: 14,),
                            const Text("Password",style: Styles.textStyleBold16,),
                            const SizedBox(height: 6,),
                            PasswordField(
                              passwordController: passwordController,
                              visible: visiblePassword,
                              toggleVisibility: togglePasswordVisibility,
                            ),
                            const SizedBox(height: 32),
                            CustomButton(
                              text: "Create an account",
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<SignUpCubit>().signUp(
                                    userName: nameController.text.trim(),
                                    firstName: firstNameController.text.trim(),
                                    lastName: lastNameController.text.trim(),
                                    email: emailController.text.trim(),
                                    password: passwordController.text,
                                    phoneNumber: phoneNumberController.text.trim(),
                                  );
                                } else {
                                  setState(() => autoValidateMode = AutovalidateMode.always);
                                }
                              },
                            ),

                          ],
                        ),
                      ),
                    ),
                                 ),
                               ),
                   if (state is SignUpLoading)
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
