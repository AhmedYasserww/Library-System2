import 'package:flutter/material.dart';
import 'package:library_system4/features/home/data/models/BookModel.dart';

import '../../../../../../core/constant/api_constant.dart';
import '../../../../../../generated/assets.dart';
class ImageBookDetails extends StatelessWidget {
  const ImageBookDetails({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.only(left: 42),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),

        child: Image.network(
          "${ApiConstants.imagesBaseUrl}${bookModel.imageUrl ?? ""}",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
