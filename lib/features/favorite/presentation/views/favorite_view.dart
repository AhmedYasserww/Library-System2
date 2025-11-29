import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/utils/styles.dart';
import 'package:library_system4/core/widgets/custom_app_bar.dart';
import 'package:library_system4/features/favorite/presentation/views/widgets/favorite_view_body.dart';
class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});
  static const String routeName = 'favorite_view';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(title: "My Wishlist 🧡",style: Styles.textStyleBold24.copyWith(color: AppColors.buttonColor),),
      body: const FavoriteViewBody(),
    );
  }
}
