import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hanoi_travel/login.dart';
import 'package:hanoi_travel/search.dart';
import 'home/setting_page.dart';
import 'user.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}