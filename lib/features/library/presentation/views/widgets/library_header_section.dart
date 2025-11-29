import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/styles.dart';

class LibraryHeaderSection extends StatelessWidget {
  const LibraryHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "DISCOVER YOUR NEXT GREAT READ : ",
          style: Styles.textStyleBold18.copyWith(color: const Color(0xff838995)),
        ),
        const SizedBox(height: 16),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: Styles.textStyleBold30.copyWith(color: Colors.white),
            children: [
              const TextSpan(text: "Explore And Search For "),
              TextSpan(
                text: "Any Book",
                style: Styles.textStyleBold30.copyWith(color: const Color(0xffe5b21b)),
              ),
              const TextSpan(text: " In Our Library"),
            ],
          ),
        ),
      ],
    );
  }
}
