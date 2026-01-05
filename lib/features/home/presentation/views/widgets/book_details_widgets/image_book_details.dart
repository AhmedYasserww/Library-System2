import 'package:flutter/material.dart';

import '../../../../../../generated/assets.dart';
class ImageBookDetails extends StatelessWidget {
  const ImageBookDetails({
    super.key,
  });

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
        child: Image.asset(
          Assets.imagesImage3,
          height: 120,
          fit: BoxFit.fill,
        ),
        // child: Image.network(
        //   "${ApiConstants.imagesBaseUrl}${bookModel.imageUrl ?? ""}",
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}
