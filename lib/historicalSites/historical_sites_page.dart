import 'package:flutter/material.dart';
import 'package:hanoi_travel/historicalSites/historical_sites_list.dart';

import '../user.dart';
import 'historical_sites_list.dart';

class HistoricalSiteDetailPage extends StatefulWidget {
  final HistoricalSiteList historicalSite;

  HistoricalSiteDetailPage({required this.historicalSite});

  @override
  _HistoricalSiteDetailPageState createState() =>
      _HistoricalSiteDetailPageState();
}

class _HistoricalSiteDetailPageState extends State<HistoricalSiteDetailPage> {
  TextEditingController _commentController = TextEditingController();
  late String _hh = widget.historicalSite.name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.historicalSite.name),
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
          actions: [
            IconButton(
              icon: Icon(
                widget.historicalSite.isFavor ? Icons.favorite : Icons.favorite_border,
                color: widget.historicalSite.isFavor ? Colors.red : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  widget.historicalSite.isFavor = !widget.historicalSite.isFavor;
                });
              },
            ),
          ],
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
                        image: AssetImage(widget.historicalSite.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            widget.historicalSite.name,
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                                  "${widget.historicalSite.address}",
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
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                              children: [
                                TextSpan(
                                  text: "Giới thiệu: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: "${widget.historicalSite.description}",
                                ),
                              ],
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
                                    widget.historicalSite.comments.add(Comment(
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
                            children: widget.historicalSite.comments.map((comment) => Padding(
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
                      )),
                  SizedBox(height: 16),
                ],
              ),
            ))
          ],
        )
    );
  }
}
