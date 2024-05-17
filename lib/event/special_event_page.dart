import 'package:flutter/material.dart';
import 'package:hanoi_travel/event/special_event_list.dart';
import 'package:hanoi_travel/event/event_detail_page.dart';

class SpecialEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Special Events"),
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
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Điều hướng đến trang chi tiết với sự kiện tương ứng
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EventDetailPage(event: events[index]),
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
                                        events[index].image,
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
                                        events[index].name,
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
                                          Text(events[index].date),
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
                                                  events[index].location,
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
                                        events[index].description,
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
                      if (index < events.length - 1)
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
