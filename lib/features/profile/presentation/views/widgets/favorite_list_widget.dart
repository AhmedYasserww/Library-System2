import 'package:flutter/material.dart';

import '../../../../favorite/presentation/views/widgets/custom_favorite_item.dart';
class FavoritesList extends StatelessWidget {
  const FavoritesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) => const CustomFavoriteItem(),
    );
  }
}
