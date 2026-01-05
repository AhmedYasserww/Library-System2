import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_button.dart';

class BookActionsSection extends StatelessWidget {
  const BookActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(text: "Borrow Now", onTap: () {}),
        ),
        const SizedBox(width: 12),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(Icons.favorite_border, color: Colors.white),
        ),
      ],
    );
  }
}
