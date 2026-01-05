import 'package:flutter/material.dart';

import '../../../../../../generated/assets.dart';
import 'book_action_section.dart';
import 'book_header_section.dart';
import 'image_book_details.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          BookHeaderSection(),
          SizedBox(height: 32),
          BookActionsSection(),
          SizedBox(height: 32),
          ImageBookDetails(),



        ],
      ),
    );
  }
}

