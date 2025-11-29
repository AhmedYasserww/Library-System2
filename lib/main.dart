import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:library_system4/core/helper_functions/on_generate_routes.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/features/navigation_bar/presentation/views/button_nav_bar_view.dart';
import 'package:library_system4/features/on_boarding/presentation/views/on_boarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
      ),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: OnBoardingView.routeName,
    );
  }
}

