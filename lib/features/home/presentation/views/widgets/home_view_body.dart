import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/features/home/presentation/views/widgets/custom_featured_book_list_view.dart';
import 'package:library_system4/features/home/presentation/views/widgets/explore_by_category_list_view.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8,),

        Text("Featured This Week ",style: Styles.textStyleBold24,),
           SizedBox(height: 16,),
           CustomFeaturedBookListView(),
            SizedBox(height: 16,),
            Text("Explore By Category ",style: Styles.textStyleBold24,),
            SizedBox(height: 16,),
            ExploreByCategoryListView()


          ],
        ),
      ),
    );
  }
}




