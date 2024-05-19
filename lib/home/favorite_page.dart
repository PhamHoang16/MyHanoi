import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hanoi_travel/destinations/detail_destination.dart';
import 'package:hanoi_travel/historicalSites/historical_sites_list.dart';
import 'package:hanoi_travel/historicalSites/historical_sites_page.dart';
import 'package:hanoi_travel/hotels/hotel_data.dart';
import 'package:hanoi_travel/hotels/hotel_detail.dart';
import 'package:hanoi_travel/restaurant/restaurant_list.dart';

import '../destinations/destination_list.dart';
import '../hotels/hotel_data.dart';
import '../restaurant/restaurant_page.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  String _selectedCategory = '';
  List<String> categories = ['Historical Sites', 'Restaurants', 'Destinations', 'Hotels'];

  @override
  Widget build(BuildContext context) {
    List<HistoricalSiteList> favoriteSites = HistoricalSiteList.historicalSites
        .where((site) => site.isFavor)
        .toList();
    List<Restaurant> favoriteRestaurants = Restaurant.restaurants
        .where((restaurant) => restaurant.isFavor)
        .toList();
    List<Destination> favoriteDestinations = Destination.destinations
        .where((destination) => destination.isFavor)
        .toList();
    List<Hotel> favoriteHotels = Hotel.hotels
        .where((hotel) => hotel.isFavor)
        .toList();


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Favorite',
            style: TextStyle(
              color: Colors.black,
            ),

          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        backgroundColor: Colors.grey[200],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              height: 1,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
                child: Container(
                  height: 58,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // Chiều kéo ngang
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _selectedCategory =
                                  _selectedCategory != categories[index]
                                      ? categories[index]
                                      : '';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _selectedCategory ==
                                    categories[index]
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
                    if (_selectedCategory == 'Historical Sites' ||
                        _selectedCategory == '')
                      ListView.builder(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: favoriteSites.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          HistoricalSiteDetailPage(
                                        historicalSite: favoriteSites[index],
                                      ),
                                    ),
                                  ).then((_) {
                                    setState(
                                        () {}); // Update state when returning from detail page
                                  });
                                },
                                child: Card(
                                  elevation: 0,
                                  margin: EdgeInsets.all(8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.25,
                                          child: AspectRatio(
                                            aspectRatio:
                                                0.75, // tỉ lệ khung hình
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                      left:
                                                          Radius.circular(12)),
                                              child: Image.asset(
                                                favoriteSites[index].image,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: Container(
                                            // height: MediaQuery.of(context).size.width * 0.33,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 0,
                                                  left: 0.0,
                                                  right: 0.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    favoriteSites[index].name,
                                                    maxLines:
                                                        1, // Giới hạn số dòng của mô tả
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(height: 4),
                                                  Row(
                                                    children: [
                                                      Icon(Icons
                                                          .location_on_outlined),
                                                      SizedBox(width: 4),
                                                      Expanded(
                                                        child: Text(
                                                          favoriteSites[index]
                                                              .address,
                                                          maxLines:
                                                              2, // Giới hạn số dòng của mô tả
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors
                                                                .grey[600],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(height: 4),
                                                  Text(
                                                    favoriteSites[index]
                                                        .description, // Dòng mô tả đầu tiên
                                                    maxLines:
                                                        2, // Giới hạn số dòng của mô tả
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey[800],
                                                    ),
                                                  ),
                                                  SizedBox(height: 4),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          child: IconButton(
                                            iconSize: 20,
                                            icon: favoriteSites[index].isFavor
                                                ? Icon(Icons.favorite,
                                                    color: Colors.red.shade300)
                                                : Icon(Icons.favorite_border,
                                                    color: Colors.black),
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
                                ),
                              ),
                              if (index < favoriteSites.length - 1)
                                Divider(
                                  color: Colors.grey, // Màu của đường kẻ ngang
                                  height: 2, // Chiều cao của Divider
                                ),
                            ],
                          );
                        },
                      ),
                    if (_selectedCategory == 'Restaurants' ||
                        _selectedCategory == '')
                      ListView.builder(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: favoriteRestaurants.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          RestaurantDetailPage(
                                        restaurant: favoriteRestaurants[index],
                                      ),
                                    ),
                                  ).then((_) {
                                    setState(
                                        () {}); // Update state when returning from detail page
                                  });
                                },
                                child: Card(
                                  elevation: 0,
                                  margin: EdgeInsets.all(8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.25,
                                          child: AspectRatio(
                                            aspectRatio:
                                                0.75, // tỉ lệ khung hình
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                      left:
                                                          Radius.circular(12)),
                                              child: Image.asset(
                                                favoriteRestaurants[index]
                                                    .image,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: Container(
                                            // height: MediaQuery.of(context).size.width * 0.33,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 0,
                                                  left: 0.0,
                                                  right: 0.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    favoriteRestaurants[index]
                                                        .name,
                                                    maxLines:
                                                        1, // Giới hạn số dòng của mô tả
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(height: 4),
                                                  Row(
                                                    children: [
                                                      Icon(Icons
                                                          .location_on_outlined),
                                                      SizedBox(width: 4),
                                                      Expanded(
                                                        child: Text(
                                                          favoriteRestaurants[
                                                                  index]
                                                              .address,
                                                          maxLines:
                                                              2, // Giới hạn số dòng của mô tả
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors
                                                                .grey[600],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(height: 4),
                                                  Text(
                                                    favoriteRestaurants[index]
                                                        .description, // Dòng mô tả đầu tiên
                                                    maxLines:
                                                        2, // Giới hạn số dòng của mô tả
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey[800],
                                                    ),
                                                  ),
                                                  SizedBox(height: 4),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          child: IconButton(
                                            iconSize: 20,
                                            icon: favoriteRestaurants[index]
                                                    .isFavor
                                                ? Icon(Icons.favorite,
                                                    color: Colors.red.shade300)
                                                : Icon(Icons.favorite_border,
                                                    color: Colors.black),
                                            onPressed: () {
                                              setState(() {
                                                favoriteRestaurants[index]
                                                        .isFavor =
                                                    !favoriteRestaurants[index]
                                                        .isFavor;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (index < favoriteRestaurants.length - 1)
                                Divider(
                                  color: Colors.grey, // Màu của đường kẻ ngang
                                  height: 2, // Chiều cao của Divider
                                ),
                            ],
                          );
                        },
                      ),
                    if (_selectedCategory == 'Destinations' ||
                        _selectedCategory == '')
                      ListView.builder(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: favoriteDestinations.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DestinationDetail(
                                            destination: favoriteDestinations[index],
                                          ),
                                    ),
                                  ).then((_) {
                                    setState(
                                            () {}); // Update state when returning from detail page
                                  });
                                },
                                child: Card(
                                  elevation: 0,
                                  margin: EdgeInsets.all(8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.25,
                                          child: AspectRatio(
                                            aspectRatio:
                                            0.75, // tỉ lệ khung hình
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.horizontal(
                                                  left:
                                                  Radius.circular(12)),
                                              child: Image.asset(
                                                favoriteDestinations[index].image,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: Container(
                                            // height: MediaQuery.of(context).size.width * 0.33,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 0,
                                                  left: 0.0,
                                                  right: 0.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    favoriteDestinations[index].name,
                                                    maxLines:
                                                    1, // Giới hạn số dòng của mô tả
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(height: 4),
                                                  Row(
                                                    children: [
                                                      Icon(Icons
                                                          .location_on_outlined),
                                                      SizedBox(width: 4),
                                                      Expanded(
                                                        child: Text(
                                                          favoriteDestinations[index]
                                                              .location,
                                                          maxLines:
                                                          2, // Giới hạn số dòng của mô tả
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors
                                                                .grey[600],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(height: 4),
                                                  Text(
                                                    favoriteDestinations[index]
                                                        .description, // Dòng mô tả đầu tiên
                                                    maxLines:
                                                    2, // Giới hạn số dòng của mô tả
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey[800],
                                                    ),
                                                  ),
                                                  SizedBox(height: 4),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          child: IconButton(
                                            iconSize: 20,
                                            icon: favoriteDestinations[index].isFavor
                                                ? Icon(Icons.favorite,
                                                color: Colors.red.shade300)
                                                : Icon(Icons.favorite_border,
                                                color: Colors.black),
                                            onPressed: () {
                                              setState(() {
                                                favoriteDestinations[index].isFavor =
                                                !favoriteDestinations[index]
                                                    .isFavor;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (index < favoriteDestinations.length - 1)
                                Divider(
                                  color: Colors.grey, // Màu của đường kẻ ngang
                                  height: 2, // Chiều cao của Divider
                                ),
                            ],
                          );
                        },
                      ),


                    if (_selectedCategory == 'Hotels' ||
                        _selectedCategory == '')
                      ListView.builder(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: favoriteHotels.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          HotelDetail(
                                            hotel: favoriteHotels[index],
                                          ),
                                    ),
                                  ).then((_) {
                                    setState(
                                            () {}); // Update state when returning from detail page
                                  });
                                },
                                child: Card(
                                  elevation: 0,
                                  margin: EdgeInsets.all(8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.25,
                                          child: AspectRatio(
                                            aspectRatio:
                                            0.75, // tỉ lệ khung hình
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.horizontal(
                                                  left:
                                                  Radius.circular(12)),
                                              child: Image.asset(
                                                favoriteHotels[index].image,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: Container(
                                            // height: MediaQuery.of(context).size.width * 0.33,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 0,
                                                  left: 0.0,
                                                  right: 0.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    favoriteHotels[index].name,
                                                    maxLines:
                                                    1, // Giới hạn số dòng của mô tả
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(height: 4),
                                                  Row(
                                                    children: [
                                                      Icon(Icons
                                                          .location_on_outlined),
                                                      SizedBox(width: 4),
                                                      Expanded(
                                                        child: Text(
                                                          favoriteHotels[index]
                                                              .location,
                                                          maxLines:
                                                          2, // Giới hạn số dòng của mô tả
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors
                                                                .grey[600],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(height: 4),
                                                  Text(
                                                    favoriteHotels[index]
                                                        .description, // Dòng mô tả đầu tiên
                                                    maxLines:
                                                    2, // Giới hạn số dòng của mô tả
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey[800],
                                                    ),
                                                  ),
                                                  SizedBox(height: 4),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          child: IconButton(
                                            iconSize: 20,
                                            icon: favoriteHotels[index].isFavor
                                                ? Icon(Icons.favorite,
                                                color: Colors.red.shade300)
                                                : Icon(Icons.favorite_border,
                                                color: Colors.black),
                                            onPressed: () {
                                              setState(() {
                                                favoriteHotels[index].isFavor =
                                                !favoriteHotels[index]
                                                    .isFavor;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (index < favoriteHotels.length - 1)
                                Divider(
                                  color: Colors.grey, // Màu của đường kẻ ngang
                                  height: 2, // Chiều cao của Divider
                                ),
                            ],
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
