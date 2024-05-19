import 'package:flutter/material.dart';
import 'package:hanoi_travel/event/special_event_list.dart';
import 'package:hanoi_travel/event/event_detail_page.dart';

import 'hotel_data.dart';
import 'hotel_detail.dart';

class HotelListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Hotels"),
            backgroundColor: Colors.white,
            scrolledUnderElevation: 0.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new, // Biểu tượng quay lại tùy chỉnh
                color: Colors.black, // Màu biểu tượng
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
              Divider(height: 1,),
              Expanded(child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                itemCount: Hotel.hotels.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Điều hướng đến trang chi tiết với sự kiện tương ứng
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HotelDetail(hotel: Hotel.hotels[index]),
                            ),
                          );
                        },

                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white, // Màu xám 50% trong suốt
                                borderRadius: BorderRadius.circular(20.0),
                                border:
                                Border.all(color: Colors.green, width: 1)),
                            padding: EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () {
                                print("tap");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HotelDetail(
                                          hotel: Hotel.hotels[index])),
                                );
                              },
                              splashColor: Colors.black,
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        20.0), // Bo tròn ảnh 50 pixel
                                    child: Image(
                                      image: AssetImage(
                                          Hotel.hotels[index].image),
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
                                        Hotel.hotels[index].name,
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
                                          Text(Hotel.hotels[index].location,
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
                                          Text(Hotel.hotels[index].star,
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
                        ),
                      ),
                      if (index < Hotel.hotels.length - 1)
                        Divider(
                          color: Colors.grey.shade300, // Màu của đường kẻ ngang
                          height: 2, // Chiều cao của Divider
                        ),
                    ],
                  );
                },
              ),)
            ],
          )
          
    );
  }
}
