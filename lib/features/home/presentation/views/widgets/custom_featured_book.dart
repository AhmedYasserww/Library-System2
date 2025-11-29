import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/utils/styles.dart';
import 'package:library_system4/generated/assets.dart';
class CustomFeaturedBook extends StatelessWidget {
  const CustomFeaturedBook({
    super.key,
  });

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
              child: Image.asset(Assets.imagesImage1)),
          const SizedBox(height: 8,),
          Text("Alex Michaelides",style: Styles.textStyleMedium18.copyWith(color: Colors.black.withOpacity(.7)),),
          const SizedBox(height:2 ,),
          Text("The Maidens",style: Styles.textStyleBold24.copyWith(color: Colors.black),),
          // Text("Agriping tale of psychological suspense ,weaving together Greek mythology,murder , and obesession.",
          //   overflow: TextOverflow.ellipsis,
          //   style: Styles.textStyleMedium18.copyWith(
          //     color: Colors.black.withOpacity(.7),
          //   ),
          //   textAlign: TextAlign.center,
          //   maxLines: 2,
          // ),
          const SizedBox(height: 4,),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              color: const Color(0xfffef3c5),
              borderRadius: BorderRadius.circular(8),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.access_time_sharp,color: AppColors.buttonColor,),
                const SizedBox(width: 8,),
                Text("Thriller",style: Styles.textStyleBold18.copyWith(color:Color(0xffb88f5c)),),
              ],
            ),
          )

        ],
      ),
    );
  }
}