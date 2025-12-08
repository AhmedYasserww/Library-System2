import 'package:flutter/material.dart';

import 'borrowed_book_item.dart';

class BorrowedBooksList extends StatelessWidget {
  const BorrowedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) => BorrowedBookItem(),
      ),
    );
  }
}