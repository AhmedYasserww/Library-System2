import 'package:flutter/material.dart';
import 'package:library_system4/features/home/data/models/BookModel.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
class BookHeaderSection extends StatelessWidget {
  const BookHeaderSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(bookModel.title ?? "", style: Styles.textStyleBold35.copyWith(color: Colors.white)),
        const SizedBox(height: 12),
        Row(
          children: [
            Text("By ${bookModel.author ?? ""}", style: Styles.textStyleMedium18.copyWith(color: Colors.grey)),
            const SizedBox(width: 16),
            Text("Horror", style: Styles.textStyleMedium18.copyWith(color:AppColors.buttonColor)),
          ],
        ),
        const SizedBox(height: 16),
        Text("Available copies: ${bookModel.availableCopies ?? ""}", style: Styles.textStyleBold16.copyWith(color: Colors.green)),
    SizedBox(height: 32,),
    Text("\$${bookModel.price ?? ""}", style: Styles.textStyleBold35.copyWith(color: AppColors.buttonColor)),
        SizedBox(height: 32,),
    Text(bookModel.description ?? " ",
    style: Styles.textStyleMedium18.copyWith(color: Colors.grey),
    ),

      ],
    );
  }
}
