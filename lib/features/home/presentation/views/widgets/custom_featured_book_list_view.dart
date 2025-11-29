import 'package:flutter/material.dart';
import 'package:library_system4/features/home/presentation/views/widgets/custom_featured_book.dart';
class CustomFeaturedBookListView extends StatelessWidget {
  const CustomFeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
          itemBuilder:(context , i){
            return const CustomFeaturedBook();
          }
      ),
    );
  }
}
