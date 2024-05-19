import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hanoi_travel/destinations/destination_list.dart';
import 'package:hanoi_travel/destinations/detail_destination.dart';


class AllDestinationSitesPage extends StatefulWidget {
  @override
  _HistoricalSitesPageState createState() => _HistoricalSitesPageState();
}

class _HistoricalSitesPageState extends State<AllDestinationSitesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Destinations"),
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
            itemCount: Destination.destinations.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DestinationDetail(
                        destination: Destination.destinations[index],
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
                                Destination.destinations[index].image,
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
                                  Destination.destinations[index].name,
                                  maxLines: 1, // Giới hạn số dòng hiển thị
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  Destination
                                      .destinations[index].location,
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
                            icon: Destination
                                .destinations[index].isFavor
                                ? Icon(Icons.favorite, color: Colors.red.shade300)
                                : Icon(Icons.favorite_border,
                                color: Colors.white),
                            // onPressed: changeFavorite,
                            onPressed: () {
                              setState(() {
                                Destination.destinations[index].isFavor = !Destination.destinations[index].isFavor;
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
