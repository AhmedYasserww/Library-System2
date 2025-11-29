import 'package:flutter/material.dart';
import 'package:library_system4/core/widgets/custom_text_field.dart';

class LibrarySearchSection extends StatelessWidget {
  const LibrarySearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      fillColor: Color(0xff1c2232),
      filledColor: true,
      prefixIcon: Icon(Icons.search, color: Colors.grey),
      hintText: "Search by title or author....",
    );
  }
}
