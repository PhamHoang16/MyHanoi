import 'package:flutter/material.dart';
import 'package:hanoi_travel/restaurant/restaurant_list.dart';

class RestaurantPage extends StatefulWidget {
  @override
  _RestaurantListPageState createState() => _RestaurantListPageState();
}

class _RestaurantListPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Danh sách nhà hàng",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
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
      body: Column(
        children: [
          Divider(height: 1,),
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  padding: EdgeInsets.only(
                      top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Restaurant.restaurants.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RestaurantDetailPage(
                                  restaurant: Restaurant.restaurants[index],
                                ),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 0,
                            margin: EdgeInsets.all(8),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                    MediaQuery.of(context).size.width * 0.25,
                                    child: AspectRatio(
                                      aspectRatio: 0.75, // tỉ lệ khung hình
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          Restaurant.restaurants[index].image,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 0, left: 0.0, right: 0.0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              Restaurant.restaurants[index].name,
                                              maxLines:
                                              1, // Giới hạn số dòng của tên
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(height: 4),
                                            Row(children: [
                                              Icon(Icons.location_on_outlined),
                                              SizedBox(width: 4),
                                              Expanded(
                                                  child: Text(
                                                    Restaurant.restaurants[index].address,
                                                    maxLines:
                                                    2, // Giới hạn số dòng của địa chỉ
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey[600],
                                                    ),
                                                  ))
                                            ]),
                                            SizedBox(height: 4),
                                            Text(
                                              Restaurant.restaurants[index]
                                                  .description, // Dòng mô tả đầu tiên
                                              maxLines:
                                              2, // Giới hạn số dòng của mô tả
                                              overflow: TextOverflow.ellipsis,
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
                                      icon: Restaurant.restaurants[index].isFavor
                                          ? Icon(Icons.favorite, color: Colors.red.shade300)
                                          : Icon(Icons.favorite_border, color: Colors.black),
                                      onPressed: () {
                                        setState(() {
                                          Restaurant.restaurants[index].isFavor = !Restaurant.restaurants[index].isFavor;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        if (index < Restaurant.restaurants.length - 1)
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
          ))
        ],
      )
      ,
    );
  }
}

class RestaurantDetailPage extends StatefulWidget {
  final Restaurant restaurant;

  RestaurantDetailPage({required this.restaurant});

  @override
  _RestaurantDetailPageState createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.restaurant.name),
        backgroundColor: Colors.transparent,
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
      body: Column(
        children: [
          Divider(height: 1,),
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  widget.restaurant.image,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.restaurant.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        widget.restaurant.address,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        widget.restaurant.description,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),)
        ],
      )
    );
  }
}
