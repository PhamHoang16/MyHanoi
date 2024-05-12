import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hanoi_travel/historicalSites/historical_sites_list.dart';
import 'package:hanoi_travel/historicalSites/historical_sites_page.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    List<HistoricalSiteList> favoriteSites = HistoricalSiteList.historicalSites.where((site) => site.favorite).toList();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Favorite Places"),
          centerTitle: true,
          backgroundColor: Colors.grey[200], // Xám nhẹ
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: favoriteSites.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HistoricalSiteDetailPage(
                            historicalSite: favoriteSites[index],
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      margin: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: Colors.lightGreen),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.33,
                              // height: MediaQuery.of(context).size.height,
                              child: Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1, // tỉ lệ khung hình vuông
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.asset(
                                        favoriteSites[index].image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Container(
                                // height: MediaQuery.of(context).size.width * 0.33,
                                child: Padding(
                                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.33*0.33, left: 0.0, right: 0.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        favoriteSites[index].name,
                                        maxLines: 1, // Giới hạn số dòng của mô tả
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        favoriteSites[index].address,
                                        maxLines: 2, // Giới hạn số dòng của mô tả
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      constraints: BoxConstraints(
                                        maxWidth: 40, // Đặt chiều rộng tối đa
                                        maxHeight: 40, // Đặt chiều cao tối đa
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green.shade300.withOpacity(0.6),
                                      ),
                                      child: IconButton(
                                        iconSize: 20,
                                        icon: favoriteSites[index].favorite
                                            ? Icon(Icons.favorite, color: Colors.red.shade300)
                                            : Icon(Icons.favorite_border, color: Colors.white),
                                        onPressed: () {
                                          setState(() {
                                            favoriteSites[index].favorite = !favoriteSites[index].favorite;
                                          });
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
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
