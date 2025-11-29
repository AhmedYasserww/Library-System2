import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/widgets/custom_app_bar.dart';
import 'package:library_system4/features/home/presentation/views/widgets/home_view_body.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const  String routeName = 'home_view';

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: CustomAppBar(title: "BookWise"),
        body: HomeViewBody(),
    );
  }
}
