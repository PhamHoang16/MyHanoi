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
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                itemCount: hotels.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Điều hướng đến trang chi tiết với sự kiện tương ứng
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HotelDetail(hotel: hotels[index]),
                            ),
                          );
                        },

                        child: Card(
                          elevation: 0,
                          margin: EdgeInsets.all(8),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.3,
                                  // height: MediaQuery.of(context).size.height,
                                  child: AspectRatio(
                                    aspectRatio: 0.8, // tỉ lệ khung hình vuông
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
                                      child: Image.asset(
                                        hotels[index].image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        hotels[index].name,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(Icons.event_outlined),
                                          SizedBox(width: 4),
                                          Text(hotels[index].date),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          SizedBox(width: 4),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  hotels[index].location,
                                                  maxLines: 2, // Giới hạn số dòng của mô tả
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        hotels[index].description,
                                        maxLines: 2, // Giới hạn số dòng của mô tả
                                        overflow: TextOverflow.ellipsis, // Hiển thị dấu ... khi văn bản bị cắt ngắn
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (index < hotels.length - 1)
                        Divider(
                          color: Colors.grey, // Màu của đường kẻ ngang
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
