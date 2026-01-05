import 'package:flutter/material.dart';
import 'package:library_system4/features/auth/presentation/views/sign_in_view.dart';
import 'package:library_system4/features/auth/presentation/views/sign_up_view.dart';
import 'package:library_system4/features/favorite/presentation/views/favorite_view.dart';
import 'package:library_system4/features/home/presentation/views/home_view.dart';
import 'package:library_system4/features/library/presentation/views/library_view.dart';
import 'package:library_system4/features/navigation_bar/presentation/views/button_nav_bar_view.dart';
import 'package:library_system4/features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/home/data/models/BookModel.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';


Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    // case SplashView.routeName:
    //   return MaterialPageRoute(builder: (context) => const SplashView());
     case OnBoardingView.routeName:
       return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case BookDetailsView.routeName:
      final bookModel = settings.arguments as BookModel;

      return MaterialPageRoute(
        builder: (context) => BookDetailsView(bookModel: bookModel),
      );

    case ButtonNavBarView.routeName:
        return MaterialPageRoute(builder: (context) => const ButtonNavBarView());
    case LibraryView.routeName:
      return MaterialPageRoute(builder: (context) => const LibraryView());
    case FavoriteView.routeName:
      return MaterialPageRoute(builder: (context) => const FavoriteView());
    case ProfileView.routeName:
      return MaterialPageRoute(builder: (context) => const ProfileView());


    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
