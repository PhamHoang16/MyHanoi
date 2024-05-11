import 'package:flutter/material.dart';
import 'package:hanoi_travel/historicalSites/historical_sites_list.dart';

class HistoricalSitesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Di tích lịch sử"),
        backgroundColor: Colors.grey[200], // Xám nhạt
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 cột
          crossAxisSpacing: 8, // Khoảng cách giữa các cột
          mainAxisSpacing: 8, // Khoảng cách giữa các dòng
        ),
        itemCount: historicalSites.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HistoricalSiteDetailPage(
                    historicalSite: historicalSites[index],
                  ),
                ),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                      child: Image.asset(
                        historicalSites[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          historicalSites[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          historicalSites[index].address,
                          style: TextStyle(fontSize: 14),
                          maxLines: 2, // Giới hạn số dòng hiển thị
                          overflow: TextOverflow.ellipsis, // Xử lý khi văn bản quá dài
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ));
  }
}

class HistoricalSiteDetailPage extends StatefulWidget {
  final HistoricalSiteList historicalSite;

  HistoricalSiteDetailPage({required this.historicalSite});

  @override
  _HistoricalSiteDetailPageState createState() => _HistoricalSiteDetailPageState();
}

class _HistoricalSiteDetailPageState extends State<HistoricalSiteDetailPage> {
  TextEditingController _commentController = TextEditingController();
  List<String> _comments = []; // Danh sách các bình luận

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.historicalSite.name),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ảnh ngang hết màn hình
              Container(
                width: double.infinity, // Chiều rộng bằng toàn bộ màn hình
                height: MediaQuery.of(context).size.width * 0.5, // Chiều cao là 1/2 chiều rộng màn hình
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.historicalSite.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Địa chỉ và mô tả
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
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
                      SizedBox(height: 8),
                      // Danh sách bình luận
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: _comments.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(_comments[index]),
                          );
                        },
                      ),
                      SizedBox(height: 16),
                      // Khung nhập bình luận
                      TextFormField(
                        controller: _commentController,
                        decoration: InputDecoration(
                          labelText: "Nhập bình luận của bạn",
                          suffixIcon: IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                              setState(() {
                                _comments.add(_commentController.text);
                                _commentController.clear();
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
