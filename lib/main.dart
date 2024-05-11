import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hanoi_travel/home.dart';
import 'package:hanoi_travel/home/favorite_page.dart';
import 'package:hanoi_travel/home/home_page.dart';
import 'package:hanoi_travel/home/news_page.dart';
import 'package:hanoi_travel/models/destination.dart';

import 'home/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
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
      )
    );
  }
}