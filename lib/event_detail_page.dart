import 'package:flutter/material.dart';
import 'package:hanoi_travel/home/event_page.dart'; // Import EventPage từ tệp tin event_page.dart

class EventDetailPage extends StatelessWidget {
  final EventPage event;

  EventDetailPage({required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.name.toUpperCase()),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Hình ảnh sự kiện
            AspectRatio(
              aspectRatio: 16 / 9, // Tỉ lệ khung hình 16:9
              child: Image.asset(
                event.image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 16),

            // Tên sự kiện
            Text(
              event.name.toUpperCase(), // Viết hoa
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.event),
                SizedBox(width: 4),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                    children: [
                      TextSpan(
                        text: "Thời gian diễn ra: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // In đậm
                        ),
                      ),
                      TextSpan(
                        text: "${event.date}",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 4),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                    children: [
                      TextSpan(
                        text: "Địa điểm: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // In đậm
                        ),
                      ),
                      TextSpan(
                        text: "${event.location}",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            // Mô tả
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
                children: [
                  TextSpan(
                    text: "Thông tin sự kiện: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "${event.description}",
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                    children: [
                      TextSpan(
                        text: "Giá vé: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // In đậm
                        ),
                      ),
                      TextSpan(
                        text: "${event.price}",
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),

                // Button đặt vé
                ElevatedButton(
                  onPressed: () {
                    // Xử lý khi người dùng nhấn vào Button đặt vé
                  },
                  child: Text("Đặt vé"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
