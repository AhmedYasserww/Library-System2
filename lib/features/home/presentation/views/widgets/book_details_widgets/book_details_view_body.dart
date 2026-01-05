import 'package:flutter/material.dart';
import 'package:library_system4/features/home/data/models/BookModel.dart';

import '../../../../../../generated/assets.dart';
import 'book_action_section.dart';
import 'book_header_section.dart';
import 'image_book_details.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          BookHeaderSection(
            bookModel: bookModel,
          ),
          SizedBox(height: 32),
          BookActionsSection(),
          SizedBox(height: 32),
          ImageBookDetails(
            bookModel: bookModel,
          ),



        ],
      ),
    );
  }
}

