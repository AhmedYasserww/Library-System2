
import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/utils/styles.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.text,
   required this.onTap,
    this.color,
    this.height,
    this.style
  });
  final String text;
  final void Function()? onTap;
  final Color? color;
  final double ? height;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height:height ?? 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color ??  AppColors.buttonColor,
        ),
        child:  Center(child: Text(text,style:style?? Styles.textStyleMedium18.copyWith(color: Colors.black),)),
      ),
    );
  }
}
