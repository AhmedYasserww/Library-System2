import 'package:flutter/material.dart';
import 'package:library_system4/features/favorite/presentation/views/widgets/custom_favorite_item.dart';

class FavoriteItemListView extends StatelessWidget {
  final List<int> selectedItems;
  final Function(int) onItemLongPress;

  const FavoriteItemListView({
    super.key,
    required this.selectedItems,
    required this.onItemLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, i) {
        final isSelected = selectedItems.contains(i);
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: GestureDetector(
            onLongPress: () => onItemLongPress(i),
            child: CustomFavoriteItem(isSelected: isSelected),
          ),
        );
      },
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:library_system4/features/favorite/presentation/views/widgets/custom_favorite_item.dart';
// class FavoriteItemListView extends StatelessWidget {
//   const FavoriteItemListView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 20,
//         itemBuilder:(context , i){
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 20),
//               child: const CustomFavoriteItem(),
//             );
//         }
//     );
//   }
// }
