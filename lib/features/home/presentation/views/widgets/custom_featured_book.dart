import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/utils/styles.dart';
import 'package:library_system4/features/home/data/models/BookModel.dart';
import 'package:library_system4/generated/assets.dart';

import '../../../../../core/constant/api_constant.dart';
class CustomFeaturedBook extends StatelessWidget {
  const CustomFeaturedBook({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 220,
      padding: const EdgeInsets.only(top: 20,bottom: 16 , left: 24,right: 24),
      decoration: BoxDecoration(
        color: const Color(0xfffbf9f1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [

          ClipRRect(
              borderRadius: BorderRadius.circular(8),

              child: Image.network(
                "${ApiConstants.imagesBaseUrl}${bookModel.imageUrl ?? ""}",
                height: 120,
                fit: BoxFit.cover,
              )),
          const SizedBox(height: 8,),
          Expanded(
          //  fit: BoxFit.scaleDown,
              child: Text(
                textAlign: TextAlign.center,
                maxLines: 2,
                bookModel.title??" ",style: Styles.textStyleMedium18.copyWith(color: Colors.black.withOpacity(.7)),)),
          const SizedBox(height:2 ,),
          FittedBox(
            fit: BoxFit.scaleDown,
              child: Text(bookModel.author??" ",style: Styles.textStyleBold24.copyWith(color: Colors.black),)),
          const SizedBox(height: 8,),
          Container(
            alignment: Alignment.center,

            decoration: BoxDecoration(
              color: const Color(0xfffef3c5),
              borderRadius: BorderRadius.circular(8),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.access_time_sharp,color: AppColors.buttonColor,),
                const SizedBox(width: 8,),
                Expanded(child: Text(bookModel.categoryName??" ",style: Styles.textStyleBold18.copyWith(color:Color(0xffb88f5c)),)),
              ],
            ),
          )

        ],
      ),
    );
  }
}