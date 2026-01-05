import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/styles.dart';
import 'package:library_system4/features/home/data/models/category_model.dart';

class CustomExploreByCategory extends StatelessWidget {
  const CustomExploreByCategory({
    super.key, required this.categoryModel,
  });
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color:const Color(0xff1c2939),
        borderRadius: BorderRadius.circular(40),
      ),
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
        child: Text(categoryModel.name,style: Styles.textStyleSemiBold20.copyWith(color: Colors.white),),
      ),
    );
  }
}