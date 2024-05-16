import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hanoi_travel/tour/tour_list.dart';

class TourPage extends StatefulWidget {
  @override
  _TourPageState createState() => _TourPageState();
}

class _TourPageState extends State<TourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tour List",
          style: TextStyle(color: Colors.black),
        ),
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
          Divider(
            height: 1,
          ),
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                        padding: EdgeInsets.only(
                            top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: TourList.tours.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => TourDetailPage(
                                        tour: TourList.tours[index],
                                      ),
                                    ),
                                  );
                                },
                                child: Card(
                                    elevation: 0,
                                    margin: EdgeInsets.all(8),
                                    child: Stack(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: MediaQuery.of(context).size.height * 0.2,
                                              child: AspectRatio(
                                                aspectRatio: 1, // tỉ lệ khung hình
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                                                  child: Image.asset(
                                                    TourList.tours[index].image,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [Colors.green.shade300, Colors.green.shade600],
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                  ),
                                                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        TourList.tours[index].name,
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.black87,
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.event_outlined, color: Colors.black87),
                                                              SizedBox(width: 4),
                                                              Text(
                                                                TourList.tours[index].date,
                                                                style: TextStyle(fontSize: 16, color: Colors.black87),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on_outlined, color: Colors.black87),
                                                              SizedBox(width: 4),
                                                              Text(
                                                                "Hà Nội",
                                                                style: TextStyle(fontSize: 16, color: Colors.black87),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                        // Positioned(
                                        //   top: 8.0,
                                        //   right: 8.0,
                                        //   child: Container(
                                        //     padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0), // Thêm padding để text có khoảng cách với viền
                                        //     decoration: BoxDecoration(
                                        //       color: Colors.green.shade300, // Màu nền của container
                                        //       borderRadius: BorderRadius.circular(16.0), // Bo tròn các góc của container
                                        //     ),
                                        //     child: Text(
                                        //       "${TourList.tours[index].itinerary.length} Ngày",
                                        //       // "Ngày".toUpperCase(),
                                        //       style: TextStyle(
                                        //         color: Colors.white,
                                        //         fontSize: 20,
                                        //         fontWeight: FontWeight.bold,
                                        //       ),
                                        //     ),
                                        //   ),
                                        // ),
                                      ],
                                    )

                                ),
                              ),
                            ],
                          );
                        })
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class TourDetailPage extends StatefulWidget {
  final TourList tour;

  TourDetailPage({required this.tour});

  @override
  _TourDetailPageState createState() => _TourDetailPageState();
}

class _TourDetailPageState extends State<TourDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tour.name),
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new, // Biểu tượng quay lại tùy chỉnh
            color: Colors.black,  // Màu biểu tượng
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
          Divider(
            height: 1,
          ),
          Expanded(child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.tour.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.tour.name,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.event_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              "${widget.tour.date}",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              "${widget.tour.location}",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mô tả:',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                              children: [
                                TextSpan(
                                  text: "${widget.tour.description}",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Lịch trình:',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          widget.tour.itinerary.length,
                              (index) {
                            // Tách thông tin của mỗi ngày thành ngày và mô tả
                            var parts = widget.tour.itinerary[index].split(': ');
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Phần ngày thứ mấy
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.2, // Độ rộng của cột ngày
                                  child: Text(
                                    parts[0],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // Đường kẻ dọc giữa hai cột
                                Container(
                                  width: 2, // Độ rộng của đường kẻ dọc
                                  height: 40, // Chiều cao của đường kẻ dọc bằng với chiều cao của Row
                                  color: Colors.grey, // Màu của đường kẻ dọc
                                  // margin: EdgeInsets.symmetric(horizontal: 0), // Khoảng cách với các phần tử xung quanh
                                ),
                                // Phần mô tả của ngày
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      parts[1],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),


                    ],
                  ),
                ),

              ],
            ),
          ),
          )
        ],
      ),

    );
  }
}
