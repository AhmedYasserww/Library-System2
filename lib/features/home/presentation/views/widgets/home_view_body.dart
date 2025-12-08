import 'package:flutter/material.dart';
import 'package:library_system4/core/widgets/custom_button.dart';
import 'package:library_system4/features/home/presentation/views/widgets/custom_featured_book_list_view.dart';
import 'package:library_system4/features/home/presentation/views/widgets/explore_by_category_list_view.dart';
import 'package:library_system4/features/home/presentation/views/widgets/header_view_body.dart';
import 'package:library_system4/features/library/presentation/views/library_view.dart';

import '../../../../../core/utils/styles.dart';
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
            SizedBox(height: 32,),
          HeaderViewBody(),
        SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: CustomButton(text: "Discover Books", onTap:(){
            Navigator.of(context).pushNamed(LibraryView.routeName);
          }),
        ),
            SizedBox(height: 32,),
        Text("Featured This Week ",style: Styles.textStyleBold24,),
           SizedBox(height: 16,),
           CustomFeaturedBookListView(),
            SizedBox(height: 16,),
            Text("Explore By Category ",style: Styles.textStyleBold24,),
            SizedBox(height: 16,),
            ExploreByCategoryListView(),
            SizedBox(height: 24,),


          ],
        ),
      ),
    );
  }
}




