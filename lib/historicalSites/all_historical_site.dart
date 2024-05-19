import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'historical_sites_list.dart';
import 'historical_sites_page.dart';

class HistoricalSitesPage extends StatefulWidget {
  @override
  _HistoricalSitesPageState createState() => _HistoricalSitesPageState();
}

class _HistoricalSitesPageState extends State<HistoricalSitesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Historical Sites"),
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
          Divider(height: 1,),
          Expanded(child: GridView.builder(
            padding:
            EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 cột
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 8, // Khoảng cách giữa các cột
              mainAxisSpacing: 8, // Khoảng cách giữa các dòng
            ),
            itemCount: HistoricalSiteList.historicalSites.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoricalSiteDetailPage(
                        historicalSite: HistoricalSiteList.historicalSites[index],
                      ),
                    ),
                  ).then((_) {
                    setState(() {}); // Update state when returning from detail page
                  });
                },
                child: Card(
                  elevation: 4,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.vertical(top: Radius.circular(12)),
                              child: Image.asset(
                                HistoricalSiteList.historicalSites[index].image,
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
                                  HistoricalSiteList.historicalSites[index].name,
                                  maxLines: 1, // Giới hạn số dòng hiển thị
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  HistoricalSiteList
                                      .historicalSites[index].address,
                                  style: TextStyle(fontSize: 16),
                                  maxLines: 2, // Giới hạn số dòng hiển thị
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 4.0,
                        right: 4.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green.shade300.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: IconButton(
                            icon: HistoricalSiteList
                                .historicalSites[index].isFavor
                                ? Icon(Icons.favorite, color: Colors.red.shade300)
                                : Icon(Icons.favorite_border,
                                color: Colors.white),
                            // onPressed: changeFavorite,
                            onPressed: () {
                              setState(() {
                                HistoricalSiteList.changeFavorite(
                                    HistoricalSiteList.historicalSites[index]);
                              });
                              // print(historicalSites[index].favorite);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      )
      ,
    );
  }
}
