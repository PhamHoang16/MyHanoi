import 'package:flutter/material.dart';

import '../user.dart';

class TicketBookingPage extends StatefulWidget {
  final String eventName;
  final String eventDateTime;
  final String eventLocation;
  final int eventPrice;

  TicketBookingPage({
    required this.eventName,
    required this.eventDateTime,
    required this.eventLocation,
    required this.eventPrice,
  });

  @override
  _TicketBookingPageState createState() => _TicketBookingPageState();
}

class _TicketBookingPageState extends State<TicketBookingPage> {
  int quantity = 1; // Số lượng vé mặc định
  int totalPrice = 0;

  @override
  void initState() {
    super.initState();
    totalPrice = widget.eventPrice;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Đặt vé"),
        backgroundColor: Colors.grey[200], // Xám nhẹ
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tên sự kiện: ${widget.eventName}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Thời gian diễn ra: ${widget.eventDateTime}",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                "Địa điểm: ${widget.eventLocation}",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    "Tên khách hàng: " + User.registeredUsers[userId].fullname,
                    style: TextStyle(fontSize: 16),
                  ),
                  // SizedBox(width: 10),
                  // Expanded(
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       hintText: "Nhập tên của bạn",
                  //       border: OutlineInputBorder(), // Khung viền cho TextField
                  //       contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0), // Điều chỉnh chiều cao của khung nhập
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              SizedBox(height: 16),

              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Số lượng vé:",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 12),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade200),
                        ),
                        onPressed: () {
                          setState(() {
                            if (quantity > 1) {
                              quantity--;
                              calculateTotalPrice(quantity);
                            }
                          });
                        },
                      ),
                      SizedBox(width: 12),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            quantity.toString(),
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),


                      SizedBox(width: 12),
                      IconButton(
                        icon: Icon(Icons.add),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade200),
                        ),
                        onPressed: () {
                          setState(() {
                            quantity++;
                            calculateTotalPrice(quantity);
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16),
              Text(
                "Thành tiền: ${totalPrice.toString()} vnđ",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    "Số điện thoại:",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Nhập số điện thoại của bạn",
                        border: OutlineInputBorder(), // Khung viền cho TextField
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Xử lý khi người dùng nhấn nút Đặt vé
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade500), // Đổi màu nền của nút Đặt vé thành màu xanh
                  ),
                  child: Text(
                    "Đặt vé",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    ));
  }

  void calculateTotalPrice(int newQuantity) {
    setState(() {
      quantity = newQuantity;
      totalPrice = widget.eventPrice * newQuantity;
    });
  }
}
