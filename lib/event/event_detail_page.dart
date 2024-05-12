import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hanoi_travel/event/special_event_list.dart';
import 'package:hanoi_travel/event/ticket_booking.dart';

class EventDetailPage extends StatelessWidget {
  final EventPage event;

  EventDetailPage({required this.event});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(event.name.toUpperCase()),
        backgroundColor: Colors.grey[200], // Xám nhẹ
      ),
      body: SingleChildScrollView(
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
            Padding(
              padding: EdgeInsets.all(16),
                child: Column(
                  children: [
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
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                event.location,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
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
                                text: "${event.price} vnđ",
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 16),

                        // Button đặt vé
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TicketBookingPage(
                                  eventName: event.name,
                                  eventDateTime: event.date,
                                  eventLocation: event.location,
                                  eventPrice: event.price,
                                ),
                              ),
                            );
                          },
                          child: Text(
                              "Đặt vé",
                              style: TextStyle(color: Colors.white)
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade500), // Đổi màu nền của nút Đặt vé thành màu xanh
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    ));
  }
}
