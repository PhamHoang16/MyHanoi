import 'package:flutter/material.dart';
import 'package:hanoi_travel/event/special_event_page.dart';
import 'package:hanoi_travel/tour/tour_page.dart';
import '../home.dart';
import '../user.dart';

class HotelBookingPage extends StatefulWidget {
  final String hotelName;
  final String hotelDateTime;
  final String hotelLocation;
  final int hotelPrice;

  HotelBookingPage({
    required this.hotelName,
    required this.hotelDateTime,
    required this.hotelLocation,
    required this.hotelPrice,
  });

  @override
  _HotelBookingPageState createState() => _HotelBookingPageState();
}

class _HotelBookingPageState extends State<HotelBookingPage> {
  int quantity = 0; // Số lượng vé mặc định cho người lớn
  int totalPrice = 0;
  String _errorMessage = '';
  String _phonenumber = '';

  @override
  void initState() {
    super.initState();
    calculateTotalPrice();
  }

  void calculateTotalPrice() {
    setState(() {
      totalPrice = quantity * widget.hotelPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.8,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Tùy chọn đơn hàng",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(
                      height: 1,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.hotelName,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines:
                          2, // Giới hạn số dòng để text tự xuống dòng khi quá dài
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.shade400), // Tạo viền màu xám
                        borderRadius:
                            BorderRadius.circular(20), // Bo tròn các cạnh
                      ),
                      padding:
                          EdgeInsets.all(8), // Khoảng cách từ nội dung đến viền
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Thời gian: " + widget.hotelDateTime,
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Địa điểm: " + widget.hotelLocation,
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Tên khách hàng: " + User.registeredUsers[userId].fullname,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.shade400), // Tạo viền màu xám
                        borderRadius:
                            BorderRadius.circular(20), // Bo tròn các cạnh
                      ),
                      padding:
                          EdgeInsets.all(8), // Khoảng cách từ nội dung đến viền
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Số lượng vé:",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .grey.shade200, // Màu nền cho nút -
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      icon: Icon(Icons.remove),
                                      color: Colors.green.shade200,
                                      onPressed: () {
                                        setState(() {
                                          if (quantity > 0) {
                                            quantity--;
                                            calculateTotalPrice();
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    child: Center(
                                      child: Text(
                                        quantity.toString(),
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .grey.shade200, // Màu nền cho nút -
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      icon: Icon(Icons.add),
                                      color: Colors.green.shade200,
                                      onPressed: () {
                                        setState(() {
                                          quantity++;
                                          calculateTotalPrice();
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Giá vé: ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "1000000 vnđ/người/ngày",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey.shade900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 8.0,
              left: 8.0,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        )),
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (_errorMessage.isNotEmpty)
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    _errorMessage,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ),
              SizedBox(height: 8,),
              Divider(
                height: 1,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Thành tiền: ",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    totalPrice.toString() + " VND",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: handleBooking,
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(vertical: 0.0)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  shadowColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.green.shade300, Colors.green.shade600],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints(
                        minHeight: 50.0), // Đặt chiều cao tối thiểu
                    child: Text(
                      "Đặt ngay",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void handleBooking() {
    if (quantity > 0) {
      setState(() {
        _errorMessage = '';
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
                        // Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TourPage()));

                        // Navigator.of(context).pop();
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
        _errorMessage = 'Bạn phải đặt ít nhất một vé.';
      });
    }
  }
}
