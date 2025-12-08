import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class BorrowedBookItem extends StatelessWidget {
  const BorrowedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: const Color(0xff111420),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: const Image(image: AssetImage(Assets.imagesImage3), height: 100, width: 104, fit: BoxFit.cover),
          ),
          const SizedBox(height: 8),
          Text('Origin', style: Styles.textStyleMedium14.copyWith(color: Colors.white)),
          const SizedBox(height: 4),
          Text('Due: 12 Jan', style: Styles.textStyleRegular12.copyWith(color: const Color(0xff7a7f88))),
        ],
      ),
    );
  }
}
