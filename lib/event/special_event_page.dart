import 'package:flutter/material.dart';
import 'package:hanoi_travel/event/special_event_list.dart';
import 'package:hanoi_travel/event/event_detail_page.dart';

class SpecialEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Special Events"),
            backgroundColor: Colors.grey[200], // Xám nhẹ
          ),
          body: ListView.builder(
            padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
            itemCount: events.length,
            itemBuilder: (context, index) {
              return GestureDetector(
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
                  elevation: 3,
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: Colors.lightGreen),
                  ),// Khoảng cách giữa các khung
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.33,
                          // height: MediaQuery.of(context).size.height,
                          child: AspectRatio(
                            aspectRatio: 1, // tỉ lệ khung hình vuông
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
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
                                  Icon(Icons.event),
                                  SizedBox(width: 4),
                                  Text(events[index].date),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
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
              );
            },
          ),
        ),
    );
  }
}
