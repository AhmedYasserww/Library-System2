import 'package:flutter/material.dart';
import 'package:library_system4/features/home/presentation/views/widgets/book_details_widgets/book_details_view_body.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../data/models/BookModel.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  static const routeName = "book_details";
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(title: "BookWise"),
      body: BookDetailsViewBody(
        bookModel: bookModel,
      ),
    );
  }
}
