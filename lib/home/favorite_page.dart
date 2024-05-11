import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hanoi_travel/elements/nav_bar.dart';
import 'package:hanoi_travel/home/setting_page.dart';

import 'package:hanoi_travel/main.dart';

import 'home_page.dart';
import 'news_page.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePage createState() => _FavoritePage();
}

class _FavoritePage extends State<FavoritePage> {
  void onPressed() {
    return;
  }
  Widget currentWidget = HomePage();
  int currentIndex = 0;
  List<Widget> nav_page = [
    HomePage(),
    FavoritePage(),
    NewsPage(),
    SettingPage()
  ];
  void changeScreen(currentIndex) {
    print("before"+currentWidget.toString());
    switch (currentIndex) {
      case 0:
        {
          currentWidget = HomePage();
          break;
        }

      case 1:
        {
          currentWidget = FavoritePage();
          break;
        }

      case 2:
        {
          currentWidget = NewsPage();
          break;
        }
      case 3:
        {
          currentWidget = SettingPage();
          break;
        }
    }
  }
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text("haha"),
        ),
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.green.shade300.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: GNav(
                  gap: 8,
                  haptic: true,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  tabBackgroundColor: Colors.green.shade300,
                  activeColor: Colors.white,
                  tabs: [
                    GButton(
                      icon: Icons.home_outlined,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.favorite_border,
                      text: 'Favorite',
                    ),
                    GButton(icon: Icons.newspaper, text: 'News'),
                    GButton(icon: Icons.person_outlined, text: 'Profile'),
                  ],
                  selectedIndex: currentIndex,
                  onTabChange: (int index) {
                    setState(() {
                      currentIndex = index;
                      changeScreen(currentIndex);
                    });
                  }
              ),
            ),
          )
      ),
    );

  }
}



