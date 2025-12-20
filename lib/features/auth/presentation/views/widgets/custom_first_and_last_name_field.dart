import 'package:flutter/material.dart';
import 'package:library_system4/core/widgets/custom_text_field.dart';

class FirstLastNameFields extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  const FirstLastNameFields({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            controller: firstNameController,
            validator: (value) =>
            value == null || value.isEmpty ? 'Required' : null,
            prefixIcon: const Icon(Icons.person),
            hintText: "First name",
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: CustomTextField(
            controller: lastNameController,
            validator: (value) =>
            value == null || value.isEmpty ? 'Required' : null,
            prefixIcon: const Icon(Icons.person_outline),
            hintText: "Last name",
          ),
        ),
      ],
    );
  }
}
