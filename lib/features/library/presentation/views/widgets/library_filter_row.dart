import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/styles.dart';

class LibraryFilterRow extends StatelessWidget {
  const LibraryFilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("All Books", style: Styles.textStyleBold24),
        const SizedBox(width: 16),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xff1c2232),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                const Icon(Icons.tune_outlined, size: 32, color: Color(0xff929BAB)),
                const SizedBox(width: 16),
                Text(
                  "Sort by ",
                  style: Styles.textStyleBold24.copyWith(color: const Color(0xffeceff5)),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xff1c2232),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Icon(Icons.filter_list_alt, size: 32, color: Color(0xffeceff5)),
          ),
        ),
      ],
    );
  }
}
