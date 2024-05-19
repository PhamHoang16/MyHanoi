import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hanoi_travel/destinations/destination_list.dart';
import 'package:hanoi_travel/elements/customAppBar.dart';
import 'package:hanoi_travel/hotels/hotel_data.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../user.dart';
import 'hotel_booking.dart';

class HotelDetail extends StatefulWidget {
  final Hotel hotel;
  HotelDetail({required this.hotel});

  @override
  _DetailPageStage createState() => _DetailPageStage();
}

class _DetailPageStage extends State<HotelDetail> {
  Icon favoriteIcon1 = Icon(Icons.favorite_border, color: Colors.white);
  bool isFavorite1 = false;
  void tapFavorite1() {
    setState(() {
      isFavorite1 = isFavorite1 == true ? false : true;
      if (isFavorite1) {
        favoriteIcon1 = Icon(Icons.favorite, color: Colors.red.shade300);
      } else {
        favoriteIcon1 = Icon(Icons.favorite_border, color: Colors.white);
      }
    });
  }
  TextEditingController _commentController = TextEditingController();
  late String _hh = widget.hotel.name;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final hotel = widget.hotel;
    int _currentIndex = 0;
    final List<Widget> pages = [
      Center(child: Container(
          width: screenWidth,
          child: Image(image: AssetImage(hotel.image), fit: BoxFit.cover,)
      )),
      Center(child: Container(
          width: screenWidth,
          child: Image(image: AssetImage(hotel.image), fit: BoxFit.cover,)
      )),
      Center(child: Container(
          width: screenWidth,
          child: Image(image: AssetImage(hotel.image), fit: BoxFit.cover,)
      )),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new, // Biểu tượng quay lại tùy chỉnh
            color: Colors.white,  // Màu biểu tượng
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              widget.hotel.isFavor ? Icons.favorite : Icons.favorite_border,
              color: widget.hotel.isFavor ? Colors.red : Colors.white,
            ),
            onPressed: () {
              setState(() {
                widget.hotel.isFavor = !widget.hotel.isFavor;
                print(widget.hotel.isFavor);
              });
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      height: screenHeight*0.4,
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                              width: screenWidth,
                              child: Image(image: AssetImage(hotel.image), fit: BoxFit.cover,)
                          ),
                          Container(
                              child: Image(image: AssetImage("assets/images/hotel2.jpg"), fit: BoxFit.cover,)
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: screenHeight*0.41, left: 10, right: 10),
                      child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 70,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          hotel.name,
                                          style: GoogleFonts.montserrat(
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_outlined),
                                            Text(
                                              hotel.location,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  color: Colors.black87
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Row(
                                      children: [
                                        Icon(Icons.star_border_rounded, size: 35),
                                        Text(hotel.star, style: GoogleFonts.montserrat(
                                          fontSize: 30, fontWeight: FontWeight.bold
                                        ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
            
                              SizedBox(height: 10),
                              Container(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("About Hotel", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                          "Hồ Tây là một trong những thắng cảnh đẹp nổi tiếng ở thủ đô Hà Nội, nơi có nhiều di tích lịch"
                                              " sử văn hóa gắn liền với lịch sử hình thành, phát triển của Kinh thành Thăng Long xưa và Hà "
                                              "Nội ngày nay. Vẻ đẹp của hồ Tây là một nét chấm phá lãng mạn, thi vị trong bức tranh đầy màu "
                                              "sắc của Hà Nội, nơi gặp gỡ, ghi dấu kỷ niệm của biết bao người Hà Nội, nơi níu chân du khách mỗi lần đếm thăm thủ đô. sắc của Hà Nội, nơi gặp gỡ, ghi dấu kỷ niệm của biết bao người Hà Nội, nơi níu chân du khách mỗi lần đếm thăm thủ đô.sắc của Hà Nội, nơi gặp gỡ, ghi dấu kỷ niệm của biết bao người Hà Nội, nơi níu chân du khách mỗi lần đếm thăm thủ đô.sắc của Hà Nội, nơi gặp gỡ, ghi dấu kỷ niệm của biết bao người Hà Nội, nơi níu chân du khách mỗi lần đếm thăm thủ đô.sắc của Hà Nội, nơi gặp gỡ, ghi dấu kỷ niệm của biết bao người Hà Nội, nơi níu chân du khách mỗi lần đếm thăm thủ đô.sắc của Hà Nội, nơi gặp gỡ, ghi dấu kỷ niệm của biết bao người Hà Nội, nơi níu chân du khách mỗi lần đếm thăm thủ đô. ",
                                          style: TextStyle(fontSize: 15)
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                "Bình luận",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 16),
                              TextFormField(
                                controller: _commentController,
                                decoration: InputDecoration(
                                  labelText: "Nhập bình luận của bạn",
                                  labelStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                                  suffixIcon: IconButton(
                                    icon: Icon(Icons.send, color: Colors.blue),
                                    onPressed: () {
                                      setState(() {
                                        widget.hotel.comments.add(Comment(
                                            username: User.registeredUsers[userId].fullname.split(' ').last,
                                            content: _commentController.text));
                                        _commentController.clear();
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Column(
                                children: widget.hotel.comments.map((comment) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipOval(
                                        child: Image.network(
                                          'https://i.pinimg.com/564x/e3/f3/4d/e3f34de992ae4267f272550a5935447f.jpg',
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(width: 8.0), // Khoảng cách giữa avatar và phần text
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              comment.username,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 4.0), // Khoảng cách giữa tên và nội dung comment
                                            Text(comment.content),
                                            Divider(
                                              color: Colors.grey, // Màu của đường kẻ ngang
                                              height: 2, // Chiều cao của Divider
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )).toList(),
                              )
                            ],
                          )
                      ),
                    ),
            
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Text("Giá vé", style: TextStyle(color: Colors.grey, fontSize: 16)),
                    Text("1.000.000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
                  ],
                ),
              ),
              Container(
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return FractionallySizedBox(
                          heightFactor: 0.8,
                          widthFactor: 1,
                          child: HotelBookingPage(
                            hotelName: hotel.name,
                            hotelDateTime: hotel.date,
                            hotelLocation: hotel.location,
                            hotelPrice: hotel.price,
                          ),
                        );
                      },
                    );
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 0.0)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border:Border.all(color: Colors.green, width: 1),
                      gradient: LinearGradient(
                        colors: [Colors.green.shade300, Colors.green.shade600],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints(minHeight: 50.0), // Đặt chiều cao tối thiểu
                      child: Text(
                        "Đặt phòng",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}