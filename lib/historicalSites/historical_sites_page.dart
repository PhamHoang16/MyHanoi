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

class HistoricalSiteDetailPage extends StatelessWidget {
  final HistoricalSiteList historicalSite;

  HistoricalSiteDetailPage({required this.historicalSite});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text(historicalSite.name), // Sử dụng tên của di tích lịch sử làm tiêu đề
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                historicalSite.image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
                SizedBox(width: 8), // Khoảng cách giữa biểu tượng và văn bản
                Flexible(
                  child: Text(
                    "${historicalSite.address}",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.visible, // Nếu quá dài, hiển thị dấu chấm cuối dòng
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
                    text: "${historicalSite.description}",
                  ),
                ],
              ),
            ),
            // Text(
            //   "Giới thiệu: ${historicalSite.description}",
            //   style: TextStyle(fontSize: 16),
            // ),
          ],
        ),
      ),
    ));
  }
}
