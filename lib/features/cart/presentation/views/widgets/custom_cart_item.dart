import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/utils/styles.dart';
import 'package:library_system4/generated/assets.dart';

class CustomCartItem extends StatelessWidget {
  final bool isSelected;

  const CustomCartItem({
    super.key,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16, top: 22, bottom: 22),
          decoration: BoxDecoration(
            color: const Color(0xff1c2232),
            borderRadius: BorderRadius.circular(20),
            border: isSelected
                ? Border.all(color: AppColors.buttonColor, width: 2)
                : null,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const Image(
                  image: AssetImage(Assets.imagesImage3),
                  height: 150,
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Origin",
                    style: Styles.textStyleBold24.copyWith(color: Colors.white),
                  ),
                  Text(
                    "Dan Brown",
                    style: Styles.textStyleMedium18
                        .copyWith(color: const Color(0xff606670)),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "\$7.99",
                    style: Styles.textStyleBold24
                        .copyWith(color: AppColors.buttonColor),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffe3000c),
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Remove",
                          style: Styles.textStyleSemiBold20
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),


        if (isSelected)
          Positioned(
            top: 8,
            right: 8,
            child: CircleAvatar(
              backgroundColor:AppColors.buttonColor,
              radius: 14,
              child: const Icon(Icons.check, color: Colors.black, size: 18),
            ),
          ),
      ],
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:library_system4/core/utils/app_color.dart';
// import 'package:library_system4/core/utils/styles.dart';
// import 'package:library_system4/generated/assets.dart';
// class CustomFavoriteItem extends StatelessWidget {
//   const CustomFavoriteItem({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding:const EdgeInsets.only(left: 42,top: 22,bottom: 22),
//       decoration: BoxDecoration(
//         color: const Color(0xff1c2232),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Row(
//         children: [
//           ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: const Image(image: AssetImage(Assets.imagesImage3,),height: 150,)),
//          const SizedBox(width: 12,),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Origin",style: Styles.textStyleBold24.copyWith(color: Colors.white),),
//               Text("Dan Brown",style: Styles.textStyleMedium18.copyWith(color: const Color(0xff606670)),),
//               const SizedBox(height: 2,),
//               Text("\$7.99",style: Styles.textStyleBold24.copyWith(color: AppColors.buttonColor),),
//             ],
//           ),
//           const SizedBox(width: 16,),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(right: 16),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: const Color(0xffe3000c),
//                 ),
//                 child: FittedBox(
//                     fit: BoxFit.scaleDown,
//                     child: Text("Remove",style: Styles.textStyleSemiBold20.copyWith(color: Colors.white),)),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

