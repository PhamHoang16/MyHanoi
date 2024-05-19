import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hanoi_travel/destinations/destination_list.dart';
import 'package:hanoi_travel/elements/customAppBar.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../historicalSites/historical_sites_list.dart';
import '../user.dart';

class DestinationDetail extends StatefulWidget {
  final Destination destination;
  DestinationDetail({required this.destination});

  @override
  _DetailPageStage createState() => _DetailPageStage();
}

class _DetailPageStage extends State<DestinationDetail> {
  Icon favoriteIcon1 = Icon(Icons.favorite_border, color: Colors.white);
  bool isFavorite1 = false;
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
  TextEditingController _commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final destination = widget.destination;
    int _currentIndex = 0;
    final List<Widget> pages = [
      Center(child: Container(
          width: screenWidth,
          child: Image(image: AssetImage(destination.image), fit: BoxFit.cover,)
      )),
      Center(child: Container(
          width: screenWidth,
          child: Image(image: AssetImage(destination.image), fit: BoxFit.cover,)
      )),
      Center(child: Container(
          width: screenWidth,
          child: Image(image: AssetImage(destination.image), fit: BoxFit.cover,)
      )),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new, // Biểu tượng quay lại tùy chỉnh
            color: Colors.white,  // Màu biểu tượng
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              destination.isFavor ? Icons.favorite : Icons.favorite_border,
              color: destination.isFavor ? Colors.red : Colors.white,
            ),
            onPressed: () {
              setState(() {
                destination.isFavor = !destination.isFavor;
              });
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        height: screenHeight*0.4,
                        child: PageView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                                width: screenWidth,
                                child: Image(image: AssetImage(destination.image), fit: BoxFit.cover,)
                            ),
                            Container(
                                child: Image(image: AssetImage("assets/images/hotel2.jpg"), fit: BoxFit.cover,)
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: screenHeight*0.41, left: 10, right: 10),
                        child: Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 70,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            destination.name,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on_outlined),
                                              Text(
                                                destination.location,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    color: Colors.black87
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star_border_rounded, size: 35),
                                          Text(destination.star, style: GoogleFonts.montserrat(
                                            fontSize: 30, fontWeight: FontWeight.bold
                                          ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),

                                SizedBox(height: 10),
                                Container(
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("About Destination", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                            destination.description,
                                            style: TextStyle(fontSize: 18)
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Bình luận",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _commentController,
                  decoration: InputDecoration(
                    labelText: "Nhập bình luận của bạn",
                    labelStyle: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.send, color: Colors.blue),
                      onPressed: () {
                        setState(() {
                          widget.destination.comments.add(Comment(
                              username: User.registeredUsers[userId].fullname.split(' ').last,
                              content: _commentController.text));
                          _commentController.clear();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Column(
                  children: widget.destination.comments.map((comment) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipOval(
                          child: Image.network(
                            'https://i.pinimg.com/564x/e3/f3/4d/e3f34de992ae4267f272550a5935447f.jpg',
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 8.0), // Khoảng cách giữa avatar và phần text
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comment.username,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.0), // Khoảng cách giữa tên và nội dung comment
                              Text(comment.content),
                              Divider(
                                color: Colors.grey, // Màu của đường kẻ ngang
                                height: 2, // Chiều cao của Divider
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )).toList(),
                )
              ],
            ),
          ),
          // Positioned(
          //   bottom: 10,
          //   left: 10,
          //   child: Container(
          //     child: Center(
          //       child: InkWell(
          //           onTap: (){},
          //           child: Container(
          //             width: screenWidth*0.95,
          //             height: 60,
          //             padding: EdgeInsets.symmetric(horizontal: 20),
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 color: Colors.blue
          //             ),
          //             child: Center(
          //               child: Text(
          //                 "Book Now",
          //                 style: TextStyle(
          //                     color: Colors.white,
          //                     fontSize: 24
          //                 ),
          //               ),
          //             ),
          //           )
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}