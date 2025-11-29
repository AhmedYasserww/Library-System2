import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/styles.dart';

class CustomExploreByCategory extends StatelessWidget {
  const CustomExploreByCategory({
    super.key,
  });

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
        child: Text("thriller",style: Styles.textStyleSemiBold20.copyWith(color: Colors.white),),
      ),
    );
  }
}