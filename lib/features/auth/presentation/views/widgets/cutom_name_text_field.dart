import 'package:flutter/material.dart';
import 'package:library_system4/core/widgets/custom_text_field.dart';
class NameField extends StatelessWidget {
  final TextEditingController nameController;

  const NameField({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: nameController,
      validator: (value) => value == null || value.isEmpty ? 'Field is required' : null,
      prefixIcon: const Icon(Icons.person),
      labelText: const Text("Enter Your Name",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
    );
  }
}