import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hanoi_travel/tour/tour_booking.dart';
import 'package:hanoi_travel/tour/tour_detail.dart';
import 'package:hanoi_travel/tour/tour_list.dart';

class TourPage extends StatefulWidget {
  @override
  _TourPageState createState() => _TourPageState();
}

class _TourPageState extends State<TourPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tour List",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Divider(
            height: 1,
          ),
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                        padding: EdgeInsets.only(
                            top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: TourList.tours.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => TourDetailPage(
                                        tour: TourList.tours[index],
                                      ),
                                    ),
                                  );
                                },
                                child: Card(
                                    elevation: 0,
                                    margin: EdgeInsets.all(8),
                                    child: Stack(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: MediaQuery.of(context).size.height * 0.2,
                                              child: AspectRatio(
                                                aspectRatio: 1, // tỉ lệ khung hình
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                                                  child: Image.asset(
                                                    TourList.tours[index].image,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [Colors.green.shade300, Colors.green.shade600],
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                  ),
                                                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        TourList.tours[index].name,
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.black87,
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.event_outlined, color: Colors.black87),
                                                              SizedBox(width: 4),
                                                              Text(
                                                                TourList.tours[index].date,
                                                                style: TextStyle(fontSize: 16, color: Colors.black87),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on_outlined, color: Colors.black87),
                                                              SizedBox(width: 4),
                                                              Text(
                                                                "Hà Nội",
                                                                style: TextStyle(fontSize: 16, color: Colors.black87),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 4),
                                                      Text(
                                                        "Giá vé: ${TourList.tours[index].price} vnd",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black87,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ],
                                    )

                                ),
                              ),
                            ],
                          );
                        })
                  ],
                ),
              ))
        ],
      ),
    );
  }
}


