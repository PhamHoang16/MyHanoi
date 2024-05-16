import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hanoi_travel/elements/nav_bar.dart';
import 'package:hanoi_travel/home/favorite_page.dart';
import 'package:hanoi_travel/home/news_page.dart';

import 'package:hanoi_travel/main.dart';
import 'package:hanoi_travel/setting/setting_page.dart';
import 'package:hanoi_travel/user.dart';

import 'home/home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: currentWidget,
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

      ),
    );
  }
}