import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hanoi_travel/historicalSites/historical_sites_list.dart';
import 'package:hanoi_travel/historicalSites/historical_sites_page.dart';

import 'package:hanoi_travel/restaurant/restaurant_list.dart';

import '../restaurant/restaurant_page.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  String _selectedCategory = '';
  List<String> categories = ['Historical Sites', 'Restaurants', 'Destinations'];

  @override
  Widget build(BuildContext context) {
    List<HistoricalSiteList> favoriteSites = HistoricalSiteList.historicalSites
        .where((site) => site.isFavor)
        .toList();
    List<Restaurant> favoriteRestaurants = Restaurant.restaurants
        .where((restaurant) => restaurant.isFavor)
        .toList();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Favorite Places",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0.0,
          // leading: IconButton(
          //   icon: Icon(
          //     Icons.arrow_back_ios_new, // Biểu tượng quay lại tùy chỉnh
          //     color: Colors.black, // Màu biểu tượng
          //   ),
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          // ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey[200],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                child: Container(
                  height: 58,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // Chiều kéo ngang
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _selectedCategory = _selectedCategory != categories[index] ? categories[index] : '';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _selectedCategory == categories[index]
                                ? Colors.green[300] // Màu nút được chọn
                                : Colors.grey[200], // Màu nút không được chọn
                          ),
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              fontSize: 20,
                              color: _selectedCategory == categories[index]
                                  ? Colors.white // Màu nút được chọn
                                  : Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (_selectedCategory == 'Historical Sites' || _selectedCategory == '')
                      ListView.builder(
                        padding:
                            EdgeInsets.only(left: 8.0, right: 8.0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: favoriteSites.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HistoricalSiteDetailPage(
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      // height: MediaQuery.of(context).size.height,
                                      child: Stack(
                                        children: [
                                          AspectRatio(
                                            aspectRatio:
                                                1, // tỉ lệ khung hình vuông
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
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
                                          padding: EdgeInsets.only(
                                              top: 0, left: 0.0, right: 0.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                favoriteSites[index].name,
                                                maxLines:
                                                    1, // Giới hạn số dòng của mô tả
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Text(
                                                favoriteSites[index].address,
                                                maxLines:
                                                    2, // Giới hạn số dòng của mô tả
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            constraints: BoxConstraints(
                                              maxWidth:
                                                  40, // Đặt chiều rộng tối đa
                                              maxHeight:
                                                  40, // Đặt chiều cao tối đa
                                            ),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.green.shade300
                                                  .withOpacity(0.6),
                                            ),
                                            child: IconButton(
                                              iconSize: 20,
                                              icon: favoriteSites[index].isFavor
                                                  ? Icon(Icons.favorite,
                                                      color:
                                                          Colors.red.shade300)
                                                  : Icon(Icons.favorite_border,
                                                      color: Colors.white),
                                              onPressed: () {
                                                setState(() {
                                                  favoriteSites[index].isFavor =
                                                      !favoriteSites[index]
                                                          .isFavor;
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
                    if (_selectedCategory == 'Restaurants' || _selectedCategory == '')
                      ListView.builder(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8.0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: favoriteRestaurants.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RestaurantDetailPage(
                                    restaurant: favoriteRestaurants[index],
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      // height: MediaQuery.of(context).size.height,
                                      child: Stack(
                                        children: [
                                          AspectRatio(
                                            aspectRatio:
                                                1, // tỉ lệ khung hình vuông
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: Image.asset(
                                                favoriteRestaurants[index]
                                                    .image,
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
                                          padding: EdgeInsets.only(
                                              top: 0, left: 0.0, right: 0.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                favoriteRestaurants[index].name,
                                                maxLines:
                                                    1, // Giới hạn số dòng của mô tả
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Text(
                                                favoriteRestaurants[index]
                                                    .address,
                                                maxLines:
                                                    2, // Giới hạn số dòng của mô tả
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            constraints: BoxConstraints(
                                              maxWidth:
                                                  40, // Đặt chiều rộng tối đa
                                              maxHeight:
                                                  40, // Đặt chiều cao tối đa
                                            ),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.green.shade300
                                                  .withOpacity(0.6),
                                            ),
                                            child: IconButton(
                                              iconSize: 20,
                                              icon: favoriteRestaurants[index]
                                                      .isFavor
                                                  ? Icon(Icons.favorite,
                                                      color:
                                                          Colors.red.shade300)
                                                  : Icon(Icons.favorite_border,
                                                      color: Colors.white),
                                              onPressed: () {
                                                setState(() {
                                                  favoriteRestaurants[index]
                                                          .isFavor =
                                                      !favoriteRestaurants[
                                                              index]
                                                          .isFavor;
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
          ],
        ),
      ),
    );
  }
}
