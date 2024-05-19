import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hanoi_travel/tour/tour_booking.dart';
import 'package:hanoi_travel/tour/tour_list.dart';

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
            Icons.arrow_back_ios_new,
            color: Colors.black,
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
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                            SizedBox(height: 8,),
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
                              var parts = widget.tour.itinerary[index].split(': ');
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IntrinsicHeight(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // width: MediaQuery.of(context).size.width * 0.2, // Độ rộng của cột ngày
                                          child: Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: Text(
                                              parts[0],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 2,
                                          color: Colors.grey, // Màu của đường kẻ dọc
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              parts[1],
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8,), // Khoảng cách giữa các hàng
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Text("Giá vé", style: TextStyle(color: Colors.grey, fontSize: 16)),
                    Text("${widget.tour.price}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
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
                          child: TourBookingPage(
                            tourName: widget.tour.name,
                            tourDateTime: widget.tour.date,
                            tourLocation: widget.tour.location,
                            tourPrice: widget.tour.price,
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
                        "Đặt tour",
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