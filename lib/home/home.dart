import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:hanoi_travel/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPressed() {
    return;
  }
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Colors.green.shade300.withOpacity(0.5),
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

          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text(
                    //       "Hello",
                    //       // style: TextStyle(
                    //       //     fontSize: 32.0,
                    //       //     fontWeight: FontWeight.bold,
                    //       //     color: Colors.black,
                    //       // ),
                    //       style: GoogleFonts.montserrat(
                    //           fontSize: 32,
                    //       ),
                    //     ),
                    //     Text(
                    //       "HoangPham",
                    //       // style: TextStyle(
                    //       //     fontSize: 32.0,
                    //       //     fontWeight: FontWeight.bold,
                    //       //     color: Colors.black,
                    //       // ),
                    //       style: GoogleFonts.montserrat(
                    //           fontSize: 32,
                    //           fontWeight: FontWeight.bold
                    //       ),
                    //     ),
                    //   ],
                    //
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
                            fontSize: 32,
                            color: Colors.black87
                        ),
                      ),
                      Text(
                        "Hoang",
                        style: GoogleFonts.montserrat(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          color: Colors.black87
                        ),
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
                            onTap: () {},
                            child: SizedBox(width: 50, height: 50, child: Icon(Icons.search)),
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
                            onTap: () {},
                            child: SizedBox(width: 50, height: 50,
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
                      Text(
                        "Categories",
                        style: GoogleFonts.roboto(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        )
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    color: Colors.white,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            width: 130.0,
                            child: ElevatedButton(
                              onPressed: () {
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: const BorderSide(
                                      color: Colors.green, width: 1),
                                ),
                                backgroundColor: Colors.white,
                              ),

                              child: const Row(
                                children: [
                                  Icon(Icons.beach_access, color: Colors.green),
                                  SizedBox(width: 4.0),
                                  Text(
                                    "Beach",
                                    style: TextStyle(
                                     fontSize: 18,
                                      color: Colors.green,
                                    ),
                                  )
                                ]
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: SizedBox(
                            width: 130.0,
                            child: ElevatedButton(
                              onPressed: () {
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: const BorderSide(
                                      color: Colors.green, width: 1),
                                ),
                                backgroundColor: Colors.white,
                              ),

                              child: const Row(
                                  children: [
                                    Icon(Icons.fastfood, color: Colors.green),
                                    SizedBox(width: 4.0),
                                    Text(
                                      "Food",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.green,
                                      ),
                                    )
                                  ]
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: SizedBox(
                            width: 130.0,
                            child: ElevatedButton(
                              onPressed: () {
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: const BorderSide(
                                      color: Colors.green, width: 1),
                                ),
                                backgroundColor: Colors.white,
                              ),

                              child: const Row(
                                  children: [
                                    Icon(Icons.hotel, color: Colors.green),
                                    SizedBox(width: 4.0),
                                    Text(
                                      "Hotel",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.green,
                                      ),
                                    )
                                  ]
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: SizedBox(
                            width: 140.0,
                            child: ElevatedButton(
                              onPressed: () {
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: const BorderSide(
                                      color: Colors.green, width: 1),
                                ),
                                backgroundColor: Colors.white,
                              ),

                              child: Row(
                                  children: [
                                    Icon(Icons.flag, color: Colors.green),
                                    SizedBox(width: 4.0),
                                    Text(
                                      "Festival",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.green,
                                      ),
                                    )
                                  ]
                              ),
                            ),
                          ),
                        ),


                      ]

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
                    children: [
                      Text(
                          "Best Destinations",
                          style: GoogleFonts.roboto(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          )
                      ),
                    ],
                  ),
                  Container(
                    height: 200.0,
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    color: Colors.white,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Stack(
                             children: [
                               InkWell(
                                 splashColor: Colors.black26,
                                 onTap: () {},
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(20.0),
                                   child: Image(
                                     image: AssetImage('assets/images/hotay.jpg',),
                                     height: 200,
                                     width: 280,
                                     fit:BoxFit.cover,
                                     ),
                                 ),
                             ),
                               Container(
                                 width: 280,
                                 padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Container(
                                       decoration: BoxDecoration(
                                         color: Colors.green.shade300.withOpacity(0.6), // Màu xám 50% trong suốt
                                         borderRadius: BorderRadius.circular(30.0), // Bo tròn 10 pixel cho tất cả các góc
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                                         child: Text(
                                             'Hồ Tây',
                                           style: GoogleFonts.montserrat(
                                             color: Colors.white,
                                             fontSize: 20,

                                           ),
                                         ),
                                       ),
                                     ),
                                     Container(
                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                       ),
                                       child: ClipOval(
                                         child: Material(
                                           color: Colors.green.shade300.withOpacity(0.6), // Button color
                                           child: InkWell(
                                             //splashColor: Colors.grey, // Splash color
                                             onTap: () {

                                             },
                                             child: SizedBox(width: 45, height: 45, child: Icon(Icons.favorite_border, color: Colors.white)),
                                           ),
                                         ),
                                       ),
                                     ),
                                   ],
                                 )
                               )
                            ]
                           ),
                          SizedBox(width: 10),
                          Stack(
                              children: [
                                InkWell(
                                  splashColor: Colors.black26,
                                  onTap: () {},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image(
                                      image: AssetImage('assets/images/pdphung.jpg',),
                                      height: 200,
                                      width: 280,
                                      fit:BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                    width: 280,
                                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green.shade300.withOpacity(0.6), // Màu xám 50% trong suốt
                                            borderRadius: BorderRadius.circular(30.0), // Bo tròn 10 pixel cho tất cả các góc
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                                            child: Text(
                                              'Phan Đình Phùng',
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white,
                                                  fontSize: 20,

                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: ClipOval(
                                            child: Material(
                                              color: Colors.green.shade300.withOpacity(0.6), // Button color
                                              child: InkWell(
                                                //splashColor: Colors.grey, // Splash color
                                                onTap: () {

                                                },
                                                child: SizedBox(width: 45, height: 45, child: Icon(Icons.favorite_border, color: Colors.white)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                )
                              ]
                          ),
                          SizedBox(width: 10),
                          Stack(
                              children: [
                                InkWell(
                                  splashColor: Colors.black26,
                                  onTap: () {},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image(
                                      image: AssetImage('assets/images/langbac.jpg',),
                                      height: 200,
                                      width: 280,
                                      fit:BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                    width: 280,
                                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green.shade300.withOpacity(0.6), // Màu xám 50% trong suốt
                                            borderRadius: BorderRadius.circular(30.0), // Bo tròn 10 pixel cho tất cả các góc
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                                            child: Text(
                                              'Lăng Bác',
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: ClipOval(
                                            child: Material(
                                              color: Colors.green.shade300.withOpacity(0.6), // Button color
                                              child: InkWell(
                                                //splashColor: Colors.grey, // Splash color
                                                onTap: () {

                                                },
                                                child: SizedBox(width: 45, height: 45, child: Icon(Icons.favorite_border, color: Colors.white)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                )
                              ]
                          ),




                        ]

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
                      Text(
                        'Best Hotel',
                          style: GoogleFonts.roboto(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        SizedBox(height: 5),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white, // Màu xám 50% trong suốt
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                  color: Colors.green,
                                  width: 2
                              )

                          ),
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0), // Bo tròn ảnh 50 pixel
                                child: Image(
                                  image: AssetImage('assets/images/hotel1.jpg'),
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
                                    ' Muong Thanh Hotel',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined, color: Colors.blueGrey,),
                                      Text('Xuan Thuy, Cau giay', style: TextStyle(color: Colors.blueGrey, fontSize: 15, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star_border, color: Colors.blueGrey,),
                                      Text('4.5', style: TextStyle(color: Colors.blueGrey, fontSize: 15, fontWeight: FontWeight.bold)),
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
                              border: Border.all(
                                  color: Colors.green,
                                  width: 2
                              )

                          ),
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0), // Bo tròn ảnh 50 pixel
                                child: Image(
                                  image: AssetImage('assets/images/hotel3.jpg'),
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
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined, color: Colors.blueGrey,),
                                      Text('Ly Thuong Kiet, Hoan Kiem', style: TextStyle(color: Colors.blueGrey, fontSize: 15, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star_border, color: Colors.blueGrey,),
                                      Text('4.5', style: TextStyle(color: Colors.blueGrey, fontSize: 15, fontWeight: FontWeight.bold)),
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
                              border: Border.all(
                                  color: Colors.green,
                                  width: 2
                              )

                          ),
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0), // Bo tròn ảnh 50 pixel
                                child: Image(
                                  image: AssetImage('assets/images/hotel2.jpg'),
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
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined, color: Colors.blueGrey,),
                                      Text('My Dinh, Nam Tu Liem', style: TextStyle(color: Colors.blueGrey, fontSize: 15, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star_border, color: Colors.blueGrey,),
                                      Text('4.5', style: TextStyle(color: Colors.blueGrey, fontSize: 15, fontWeight: FontWeight.bold)),
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
                              border: Border.all(
                                  color: Colors.green,
                                  width: 2
                              )

                          ),
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0), // Bo tròn ảnh 50 pixel
                                child: Image(
                                  image: AssetImage('assets/images/hotel2.jpg'),
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
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined, color: Colors.blueGrey,),
                                      Text('My Dinh, Nam Tu Liem', style: TextStyle(color: Colors.blueGrey, fontSize: 15, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star_border, color: Colors.blueGrey,),
                                      Text('4.5', style: TextStyle(color: Colors.blueGrey, fontSize: 15, fontWeight: FontWeight.bold)),
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
      )
    );
  }
}



