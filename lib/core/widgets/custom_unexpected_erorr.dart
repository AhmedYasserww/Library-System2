import 'package:flutter/material.dart';

class CustomUnexpectedError extends StatelessWidget {
  const CustomUnexpectedError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Unexpected error occurred, please try again later",
        style: TextStyle(color: Colors.grey, fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}
