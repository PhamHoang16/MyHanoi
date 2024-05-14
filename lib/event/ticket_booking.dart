import 'package:flutter/material.dart';
import 'package:hanoi_travel/event/special_event_page.dart';
import '../home.dart';
import '../user.dart';

class TicketBookingPage extends StatefulWidget {
  final String eventName;
  final String eventDateTime;
  final String eventLocation;
  final int adultPrice;
  final int childrenPrice;

  TicketBookingPage({
    required this.eventName,
    required this.eventDateTime,
    required this.eventLocation,
    required this.adultPrice,
    required this.childrenPrice,
  });

  @override
  _TicketBookingPageState createState() => _TicketBookingPageState();
}

class _TicketBookingPageState extends State<TicketBookingPage> {
  int adultQuantity = 0; // Số lượng vé mặc định cho người lớn
  int childrenQuantity = 0; // Số lượng vé mặc định cho trẻ em
  int totalPrice = 0;
  bool _errorMessage = false;

  @override
  void initState() {
    super.initState();
    calculateTotalPrice();
  }

  void calculateTotalPrice() {
    setState(() {
      totalPrice = (adultQuantity * widget.adultPrice) +
          (childrenQuantity * widget.childrenPrice);
    });
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
                  "Sự kiện: ${widget.eventName}",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  "Thời gian diễn ra: ${widget.eventDateTime}",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  "Địa điểm: ${widget.eventLocation}",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      "Tên khách hàng: " +
                          User.registeredUsers[userId].fullname,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      "Số điện thoại:",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "Nhập số điện thoại của bạn",
                          border:
                              OutlineInputBorder(), // Khung viền cho TextField
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Số lượng vé:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 8),
                // Số lượng vé người lớn
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Adult",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Từ 14 tuổi đổ lên",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade900),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "${widget.adultPrice} vnđ/vé",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade900),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.remove),
                        color: Colors.green.shade200,
                        onPressed: () {
                          setState(() {
                            if (adultQuantity > 0) {
                              adultQuantity--;
                              calculateTotalPrice();
                            }
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(
                        child: Text(
                          adultQuantity.toString(),
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.green.shade200,
                        onPressed: () {
                          setState(() {
                            adultQuantity++;
                            calculateTotalPrice();
                          });
                        },
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),

                // Số lượng vé trẻ em
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Children",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Từ 14 tuổi đổ xuống",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade900),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "${widget.childrenPrice} vnđ/vé",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade900),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.remove),
                        color: Colors.green.shade200,
                        onPressed: () {
                          setState(() {
                            if (childrenQuantity > 0) {
                              childrenQuantity--;
                              calculateTotalPrice();
                            }
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(
                        child: Text(
                          childrenQuantity.toString(),
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.green.shade200,
                        onPressed: () {
                          setState(() {
                            childrenQuantity++;
                            calculateTotalPrice();
                          });
                        },
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),
                Text(
                  "Thành tiền: ${totalPrice.toString()} VND",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 16),
                Column(
                  children: [
                    if (_errorMessage == true)
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 8.0), // Khoảng cách dưới cho dòng văn bản
                        child: Text(
                          "Bạn phải đặt ít nhất một vé.",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: handleBooking,
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(vertical: 0.0)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          shadowColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.green.shade300,
                                Colors.green.shade600
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            constraints: BoxConstraints(
                                minHeight: 50.0), // Đặt chiều cao tối thiểu
                            child: Text(
                              "Continue",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void handleBooking() {
    if (childrenQuantity > 0 || adultQuantity > 0) {
      setState(() {
        _errorMessage = false;
      });
      int userBalance = User.registeredUsers[userId].balance;

      if (userBalance >= totalPrice) {
        // Trừ số dư tài khoản
        setState(() {
          User.registeredUsers[userId].balance -= totalPrice;
        });
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              "Đặt vé thành công!",
              textAlign: TextAlign.center,
            ),
            actions: [
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100, // Đặt chiều ngang cho container
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      child: Text(
                        "OK",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              "Số dư của bạn không đủ!",
              textAlign: TextAlign.center,
            ),
            actions: [
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100, // Đặt chiều ngang cho container
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      child: Text(
                        "OK",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }
    } else {
      setState(() {
        _errorMessage = true;
      });
    }
  }
}
