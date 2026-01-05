import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
class BookHeaderSection extends StatelessWidget {
  const BookHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("The Maidens", style: Styles.textStyleBold35.copyWith(color: Colors.white)),
        const SizedBox(height: 12),
        Row(
          children: [
            Text("By Alex Michaelides", style: Styles.textStyleMedium18.copyWith(color: Colors.grey)),
            const SizedBox(width: 16),
            Text("Horror", style: Styles.textStyleMedium18.copyWith(color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 16),
        Text("Available copies: 9", style: Styles.textStyleBold16.copyWith(color: Colors.green)),
    SizedBox(height: 32,),
    Text("\$13.44", style: Styles.textStyleBold35.copyWith(color: AppColors.buttonColor)),
        SizedBox(height: 32,),
    Text(
    "A psychological thriller with dark academic and greek tragedy undertones involving a secret society of female students.",
    style: Styles.textStyleMedium18.copyWith(color: Colors.grey),
    ),

      ],
    );
  }
}
