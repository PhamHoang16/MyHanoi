import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hanoi_travel/home/setting_page.dart';

import '../home/favorite_page.dart';
import '../home/home_page.dart';
import '../home/news_page.dart';
import '../home/setting_page.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget currentWidget = SizedBox.shrink();
    int currentIndex = 0;
    void changeScreen(currentIndex) {
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
    return ClipRRect(
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
              GButton(
                  icon: Icons.newspaper,
                  text: 'News'
              ),
              GButton(
                  icon: Icons.person_outlined,
                  text: 'Profile',
              ),
            ],
            selectedIndex: currentIndex,
            onTabChange: (int index) {
              currentIndex = index;
              changeScreen(currentIndex);
              print(currentWidget.toString());
            }
        ),
      ),
      )
    );
  }
  
}