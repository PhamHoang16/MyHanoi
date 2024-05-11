import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hanoi_travel/home.dart';
import 'package:hanoi_travel/home/favorite_page.dart';
import 'package:hanoi_travel/home/home_page.dart';
import 'package:hanoi_travel/home/news_page.dart';
import 'package:hanoi_travel/models/destination.dart';
import 'package:hanoi_travel/login.dart';
import 'home/setting_page.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
    debugShowCheckedModeBanner: false,
  ));
  // runApp(MyApp());
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
      home: SafeArea(
          child: Scaffold(
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

          )
      ),
    );
  }
}
