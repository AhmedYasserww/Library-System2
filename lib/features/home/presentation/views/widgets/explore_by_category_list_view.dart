import 'package:flutter/material.dart';
import 'package:library_system4/core/widgets/custom_explore_by_category.dart';
class ExploreByCategoryListView extends StatelessWidget {
  const ExploreByCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
      return SizedBox(
      height: 52,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:(context , i){
            return const CustomExploreByCategory();
          }
      ),
    );
  }
}
