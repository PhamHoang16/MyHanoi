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
import 'package:hanoi_travel/tour/tour_page.dart';
import 'package:hanoi_travel/user.dart';

import 'home/home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget currentWidget = HomePage();
  List<Widget> nav_page = [
    HomePage(),
    FavoritePage(),
    TourPage(),
    SettingPage()
  ];

  void changeScreen(int index) {
    setState(() {
      currentWidget = nav_page[index];
    });
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
                    onPressed: () => changeScreen(0),
                  ),
                  GButton(
                    icon: Icons.favorite_border,
                    text: 'Favorite',
                    onPressed: () => changeScreen(1),
                  ),
                  GButton(
                    icon: Icons.tour_rounded,
                    text: 'Tours',
                    onPressed: () => changeScreen(2),
                  ),
                  GButton(
                    icon: Icons.person_outlined,
                    text: 'Profile',
                    onPressed: () => changeScreen(3),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}