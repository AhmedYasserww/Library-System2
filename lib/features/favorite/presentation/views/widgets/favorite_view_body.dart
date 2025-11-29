import 'package:flutter/material.dart';
import 'package:library_system4/features/favorite/presentation/views/widgets/favorite_item_list_view.dart';
import 'package:library_system4/features/favorite/presentation/views/widgets/summary_item_widget.dart';

class FavoriteViewBody extends StatefulWidget {
  const FavoriteViewBody({super.key});

  @override
  State<FavoriteViewBody> createState() => _FavoriteViewBodyState();
}

class _FavoriteViewBodyState extends State<FavoriteViewBody> {
  final List<int> selectedItems = [];

  void toggleSelection(int index) {
    setState(() {
      if (selectedItems.contains(index)) {
        selectedItems.remove(index);
      } else {
        selectedItems.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: FavoriteItemListView(
              selectedItems: selectedItems,
              onItemLongPress: toggleSelection,
            ),
          ),
          const SizedBox(height: 32),
          SummaryItemWidget(selectedItems: selectedItems)
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:library_system4/core/utils/app_color.dart';
// import 'package:library_system4/core/utils/styles.dart';
// import 'package:library_system4/core/widgets/custom_button.dart';
// import 'package:library_system4/features/favorite/presentation/views/widgets/custom_favorite_item.dart';
// import 'package:library_system4/features/favorite/presentation/views/widgets/favorite_item_list_view.dart';
// class FavoriteViewBody extends StatelessWidget {
//   const FavoriteViewBody({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//       children: [
//         SizedBox(height: 20,),
//         Expanded(child: const FavoriteItemListView()),
//         SizedBox(height: 32,),
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: 12),
//           decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),   color: const Color(0xff1c2232),),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 8,),
//               Text("Summary",style: Styles.textStyleBold18.copyWith(color:AppColors.buttonColor),),
//               SizedBox(height: 8,),
//               Row(
//               //  crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Text("Total Books :",style: Styles.textStyleBold18.copyWith(color: Colors.white),),
//                   const Spacer(),
//                   Text("3",style: Styles.textStyleBold18.copyWith(color: Colors.white),),
//
//
//                 ],
//               ),
//               SizedBox(height: 8,),
//               Row(
//                 //  crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Text(" Selected :",style: Styles.textStyleBold18.copyWith(color: Colors.white),),
//                   const Spacer(),
//                   Text("0",style: Styles.textStyleBold18.copyWith(color: Colors.white),),
//                 ],
//               ),
//               SizedBox(height: 8,),
//               CustomButton(
//                 height: 44,
//                 text: "Borrow Selected (0)",
//                 style: Styles.textStyleBold22.copyWith(color: Colors.black),
//                 onTap: (){},color: Color(0xff6a7181),),
//               SizedBox(height: 12,),
//               CustomButton(
//                 height: 44,
//                 text: "Clear Wishlist",
//                 style: Styles.textStyleBold22,
//
//                 onTap: (){},color: const Color(0xff354153),),
//               const SizedBox(height: 8,)
//             ],
//           ),
//         )
//
//       ],
//       ),
//     );
//   }
// }
//
