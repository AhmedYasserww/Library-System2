import 'package:flutter/material.dart';
import 'package:library_system4/features/home/presentation/views/widgets/book_details_widgets/book_details_view_body.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});
  static const routeName = "book_details";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "BookWise"),
      body: BookDetailsViewBody(),
    );
  }
}
