import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hanoi_travel/home/home_page.dart';
import 'package:hanoi_travel/login.dart';
import 'package:hanoi_travel/search.dart';
import 'home.dart';
import 'user.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

void main() {
  // runApp(MaterialApp(
  //   home: SearchPage(),
  //   debugShowCheckedModeBanner: false,
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: AnimatedSplashScreen(
          splash: Image.asset('assets/images/logo.png', width: 300, height: 300,),
          duration: 3,
          nextScreen: LoginScreen(),
          splashTransition: SplashTransition.fadeTransition,
          //pageTransitionType: PageTransitionType.scale,
        ),
      ),
    );
  }
}