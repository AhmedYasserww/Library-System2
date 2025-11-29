import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/widgets/custom_text_field.dart';
class PasswordField extends StatelessWidget {
  final TextEditingController passwordController;
  final bool visible;
  final VoidCallback toggleVisibility;

  const PasswordField({
    super.key,
    required this.passwordController,
    required this.visible,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      prefixIcon: const Icon(Icons.lock,color: AppColors.buttonColor,),
      hintText: "Enter Your Password",

      controller: passwordController,
      obscureText: visible,
      validator: (value) => value == null || value.isEmpty ? 'required this field' : null,
      suffixIcon: IconButton(
        onPressed: toggleVisibility,
        icon: Icon(visible ? Icons.visibility_off : Icons.visibility,color: AppColors.buttonColor),
      ),

    );
  }
}