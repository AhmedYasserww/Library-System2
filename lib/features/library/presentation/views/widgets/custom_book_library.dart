import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/utils/styles.dart';
import 'package:library_system4/generated/assets.dart';

class CustomBookLibrary extends StatelessWidget {
  const CustomBookLibrary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    //  crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),


          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 2,),
                const Image(image: AssetImage(Assets.imagesImage2),),
                SizedBox(height: 12,),
                Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    )),
                SizedBox(height: 16,)


              ],
            ),
          ),
        ),
        const SizedBox(height: 4,),
        Text("Origin",style: Styles.textStyleBold24.copyWith(color: Colors.white),),
        Text("Dan Brown",style: Styles.textStyleMedium18.copyWith(color: const Color(0xff606670)),),
        const SizedBox(height: 2,),
        Text("\$7.99",style: Styles.textStyleBold24.copyWith(color: AppColors.buttonColor),),
      ],
    );
  }
}