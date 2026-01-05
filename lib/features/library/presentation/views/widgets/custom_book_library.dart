import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/utils/styles.dart';
import 'package:library_system4/features/home/data/models/BookModel.dart';
import 'package:library_system4/generated/assets.dart';

import '../../../../../core/constant/api_constant.dart';
import '../../../../home/presentation/views/book_details_view.dart';

class CustomBookLibrary extends StatelessWidget {
  const CustomBookLibrary({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>{
        Navigator.of(context).pushNamed(BookDetailsView.routeName,arguments: bookModel)
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          /// 🖼️ Book Cover
          Container(
            height: 190,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                "${ApiConstants.imagesBaseUrl}${bookModel.imageUrl ?? ""}",
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 10),

          /// 📖 Title
          Text(
            bookModel.title ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Styles.textStyleBold18.copyWith(color: Colors.white),
          ),

          const SizedBox(height: 4),

          /// ✍ Author
          Text(
            bookModel.author ?? "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyleMedium14.copyWith(
              color: Colors.grey.shade400,
            ),
          ),

          const SizedBox(height: 6),

          /// 🏷 Category
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.buttonColor.withOpacity(.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              bookModel.categoryName ?? "",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyleMedium14.copyWith(
                color: AppColors.buttonColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
