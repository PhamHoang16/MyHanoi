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

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     Color mainColor = Colors.green.shade300;
//     Color backgroundColor = Colors.white;
//     List<Destination> favoriteList = [];
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Container(
//         color: Colors.white,
//         child: Home()
//       )
//     );
//   }
// }
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
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
