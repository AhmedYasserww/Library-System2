import 'package:flutter/material.dart';
import 'package:library_system4/features/favorite/presentation/views/favorite_view.dart';
import 'package:library_system4/features/home/presentation/views/home_view.dart';
import 'package:library_system4/features/library/presentation/views/library_view.dart';
import 'package:library_system4/features/profile/presentation/views/profile_view.dart';
import '../../../../../core/utils/app_color.dart';

class NavigationBarBody extends StatefulWidget {
  const NavigationBarBody({super.key});

  @override
  NavigationBarBodyState createState() => NavigationBarBodyState();
}

class NavigationBarBodyState extends State<NavigationBarBody> {
  int selectedIndex = 0;

  void changeTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> views = const [
    HomeView(),
   LibraryView(),
    FavoriteView(),
  ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        onTap:changeTab,
        backgroundColor: AppColors.backgroundColor,
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.buttonColor,
        unselectedItemColor: const Color(0xff67687E),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.local_library_outlined), label: "library"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: "favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "profile"),
        ],
      ),
      backgroundColor: Colors.white,
      body: views[selectedIndex],
    );
  }
}

