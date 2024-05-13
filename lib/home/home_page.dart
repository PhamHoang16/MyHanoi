import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hanoi_travel/destinations/destination_list.dart';
import 'package:hanoi_travel/destinations/detail_destination.dart';
import 'package:hanoi_travel/elements/customAppBar.dart';
import 'package:hanoi_travel/elements/nav_bar.dart';
import 'package:hanoi_travel/home/setting_page.dart';

import 'package:hanoi_travel/main.dart';
import 'package:hanoi_travel/event/special_event_page.dart';
import 'package:hanoi_travel/models/destination.dart';
import 'package:hanoi_travel/event/special_event_list.dart';
import 'package:hanoi_travel/event/event_detail_page.dart';
import 'package:hanoi_travel/search.dart';

import '../historicalSites/historical_sites_page.dart';
import '../user.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color categoriesColor1 = Colors.white;
  Color categoriesTextColor1 = Colors.green;
  Color categoriesColor2 = Colors.white;
  Color categoriesTextColor2 = Colors.green;
  Color categoriesColor3 = Colors.white;
  Color categoriesTextColor3 = Colors.green;
  Color categoriesColor4 = Colors.white;
  Color categoriesTextColor4 = Colors.green;
  Icon favoriteIcon1 = Icon(Icons.favorite_border, color: Colors.white);
  bool isFavorite1 = false;
  Icon favoriteIcon2 = Icon(Icons.favorite_border, color: Colors.white);
  bool isFavorite2 = false;
  Icon favoriteIcon3 = Icon(Icons.favorite_border, color: Colors.white);
  bool isFavorite3 = false;
  void _changeColor1() {
    setState(() {
      categoriesColor1 = categoriesColor1 == Colors.green.shade300
          ? Colors.white
          : Colors.green.shade300;
      categoriesTextColor1 =
          categoriesTextColor1 == Colors.green ? Colors.white : Colors.green;
    });
  }

  void _changeColor2() {
    setState(() {
      categoriesColor2 = categoriesColor2 == Colors.green.shade300
          ? Colors.white
          : Colors.green.shade300;
      categoriesTextColor2 =
          categoriesTextColor2 == Colors.green ? Colors.white : Colors.green;
    });
  }

  void _changeColor3() {
    setState(() {
      categoriesColor3 = categoriesColor3 == Colors.green.shade300
          ? Colors.white
          : Colors.green.shade300;
      categoriesTextColor3 =
          categoriesTextColor3 == Colors.green ? Colors.white : Colors.green;
    });
  }

  void _changeColor4() {
    setState(() {
      categoriesColor4 = categoriesColor4 == Colors.green.shade300
          ? Colors.white
          : Colors.green.shade300;
      categoriesTextColor4 =
          categoriesTextColor4 == Colors.green ? Colors.white : Colors.green;
    });
  }

  void tapFavorite1() {
    setState(() {
      isFavorite1 = isFavorite1 == true ? false : true;
      if (isFavorite1) {
        favoriteIcon1 = Icon(Icons.favorite, color: Colors.red.shade300);
      } else {
        favoriteIcon1 = Icon(Icons.favorite_border, color: Colors.white);
      }
    });
  }

  void tapFavorite2() {
    setState(() {
      if (isFavorite2) {
        favoriteIcon2 = Icon(Icons.favorite, color: Colors.red.shade300);
        isFavorite2 = false;
        print("it ok");
      } else {
        favoriteIcon2 = Icon(Icons.favorite_border, color: Colors.white);
        isFavorite2 = false;
      }
    });
  }

  void tapFavorite3() {
    setState(() {
      isFavorite3 = isFavorite3 == true ? false : true;
      if (isFavorite3) {
        favoriteIcon3 = Icon(Icons.favorite, color: Colors.red.shade300);
      } else {
        favoriteIcon3 = Icon(Icons.favorite_border, color: Colors.white);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hello, ",
                            // style: TextStyle(
                            //     fontSize: 32.0,
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.black,
                            // ),
                            style: GoogleFonts.montserrat(
                                fontSize: 32, color: Colors.black87),
                          ),
                          Text(
                            User.registeredUsers[userId].fullname.split(' ').last,
                            // "Hoang",
                            style: GoogleFonts.montserrat(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green, // Adjust color as needed
                            width: 1, // Adjust width as needed
                          ),
                        ),
                        child: ClipOval(
                          child: Material(
                            color: Colors.white, // Button color
                            child: InkWell(
                              splashColor: Colors.grey, // Splash color
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SearchPage(),
                                  ),
                                );
                              },
                              child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Icon(Icons.search)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0, height: 10.0),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green, // Adjust color as needed
                            width: 1, // Adjust width as needed
                          ),
                        ),
                        child: ClipOval(
                          child: Material(
                            color: Colors.blue, // Button color
                            child: InkWell(
                              splashColor: Colors.grey, // Splash color
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SettingPage()),
                                );
                              },
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: Image.network(
                                  'https://i.pinimg.com/736x/11/e4/4d/11e44d85743b28fa62121b5ae71a914b.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Categories",
                            style: GoogleFonts.roboto(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            )),
                      ],
                    ),
                    Container(
                      height: 40,
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      color: Colors.white,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            width: 130.0,
                            child: ElevatedButton(
                              onPressed: _changeColor1,
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side:
                                      BorderSide(color: Colors.green, width: 1),
                                ),
                                backgroundColor: categoriesColor1,
                              ),
                              child: Row(children: [
                                Icon(Icons.beach_access,
                                    color: categoriesTextColor1),
                                SizedBox(width: 4.0),
                                Text(
                                  "Beach",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: categoriesTextColor1,
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: SizedBox(
                            // width: 130.0,
                            child: ElevatedButton(
                              onPressed: _changeColor2,
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: const BorderSide(
                                      color: Colors.green, width: 1),
                                ),
                                backgroundColor: categoriesColor2,
                              ),
                              child: Row(children: [
                                Icon(Icons.fastfood,
                                    color: categoriesTextColor2),
                                SizedBox(width: 4.0),
                                Text(
                                  "Food",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: categoriesTextColor2,
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: SizedBox(
                            // width: 130.0,
                            child: ElevatedButton(
                              onPressed: _changeColor3,
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: const BorderSide(
                                      color: Colors.green, width: 1),
                                ),
                                backgroundColor: categoriesColor3,
                              ),
                              child: Row(children: [
                                Icon(Icons.hotel, color: categoriesTextColor3),
                                SizedBox(width: 4.0),
                                Text(
                                  "Hotel",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: categoriesTextColor3,
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: SizedBox(
                            // width: 140.0,
                            child: ElevatedButton(
                              onPressed: _changeColor4,
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: const BorderSide(
                                      color: Colors.green, width: 1),
                                ),
                                backgroundColor: categoriesColor4,
                              ),
                              child: Row(children: [
                                Icon(Icons.flag, color: categoriesTextColor4),
                                SizedBox(width: 5.0),
                                Text(
                                  "Festival",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: categoriesTextColor4,
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => HistoricalSitesPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: const BorderSide(color: Colors.green, width: 1),
                                  ),
                                  backgroundColor: categoriesColor2,
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.museum, color: categoriesTextColor2),
                                    SizedBox(width: 8.0),
                                    Text(
                                      "Historical sites",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: categoriesTextColor2,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Best Destination",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(width: 10), // Khoảng cách giữa văn bản và nút
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SpecialEventPage()),
                            );
                          },
                        ),
                      ],
                    ),
                    Container(
                      height: 220.0,
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      color: Colors.white,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: destinations.map((destination) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DestinationDetail(destination: destination)),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 300,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.green), // Màu viền cho frame
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                        child: Image.asset(
                                          destination.image,
                                          height: 140,
                                          width: double.infinity, // Độ rộng toàn bộ
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  destination.name,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                SizedBox(height: 4),
                                                Row(
                                                  children: [
                                                    Icon(Icons.location_on_outlined),
                                                    SizedBox(width: 4),
                                                    Text(destination.location)
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.star_border_rounded, size: 36),
                                                SizedBox(width: 4),
                                                Text(
                                                  destination.star,
                                                  style: TextStyle(
                                                      fontSize: 24
                                                  ),
                                                ),
                                                SizedBox(width: 8),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  right: 20,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipOval(
                                      child: Material(
                                        color: Colors.green.shade300
                                            .withOpacity(0.6), // Button color
                                        child: InkWell(
                                          //splashColor: Colors.grey, // Splash color
                                          onTap: () {
                                            setState(() {
                                              destination.isFavor = destination.isFavor == true ? false : true;
                                            });
                                            print(destination.isFavor);
                                          },
                                          child: SizedBox(
                                              width: 45,
                                              height: 45,
                                              child: destination.isFavor ? Icon(Icons.favorite, color: Colors.red.shade300) : Icon(Icons.favorite_border, color: Colors.white)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Special Events",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(width: 10), // Khoảng cách giữa văn bản và nút
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SpecialEventPage()),
                            );
                          },
                        ),
                      ],
                    ),
                    Container(
                      height: 220.0,
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      color: Colors.white,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: events.map((event) {
                          return GestureDetector(
                            onTap: () {
                              // Điều hướng đến trang chi tiết của sự kiện khi được nhấn
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => EventDetailPage(event: event)),
                              );
                            },
                            child: Container(
                              width: 300,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.green), // Màu viền cho frame
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                    child: Image.asset(
                                      event.image,
                                      height: 140,
                                      width: double.infinity, // Độ rộng toàn bộ
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          event.name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Icon(Icons.event_outlined),
                                            SizedBox(width: 4),
                                            Text(
                                              event.date,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Best Hotel',
                            style: GoogleFonts.roboto(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 500,
                      child: ListView(
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        children: [
                          SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white, // Màu xám 50% trong suốt
                                borderRadius: BorderRadius.circular(20.0),
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                            padding: EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () {},
                              splashColor: Colors.black,
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        20.0), // Bo tròn ảnh 50 pixel
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/hotel1.jpg'),
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ' Muong Thanh Hotel',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.blueGrey,
                                          ),
                                          Text('Xuan Thuy, Cau giay',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_border,
                                            color: Colors.blueGrey,
                                          ),
                                          Text('4.5',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white, // Màu xám 50% trong suốt
                                borderRadius: BorderRadius.circular(20.0),
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Bo tròn ảnh 50 pixel
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/hotel3.jpg'),
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' Mövenpick Hotel Hanoi',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.blueGrey,
                                        ),
                                        Text('Ly Thuong Kiet, Hoan Kiem',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.blueGrey,
                                        ),
                                        Text('4.5',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white, // Màu xám 50% trong suốt
                                borderRadius: BorderRadius.circular(20.0),
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Bo tròn ảnh 50 pixel
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/hotel2.jpg'),
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' JW Marriot',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.blueGrey,
                                        ),
                                        Text('My Dinh, Nam Tu Liem',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.blueGrey,
                                        ),
                                        Text('4.5',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white, // Màu xám 50% trong suốt
                                borderRadius: BorderRadius.circular(20.0),
                                border:
                                    Border.all(color: Colors.green, width: 2)),
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Bo tròn ảnh 50 pixel
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/hotel2.jpg'),
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' JW Marriot',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.blueGrey,
                                        ),
                                        Text('My Dinh, Nam Tu Liem',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.blueGrey,
                                        ),
                                        Text('4.5',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
