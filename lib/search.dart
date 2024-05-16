import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'historicalSites/historical_sites_list.dart';
import 'historicalSites/historical_sites_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  String _search = '';

  List<HistoricalSiteList> _searchResults =
      HistoricalSiteList.historicalSites.sublist(0, 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search"),
          backgroundColor: Colors.white,
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
            Padding(
              padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
              child: TextFormField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    _search = value;
                    print("search: " + _search);
                    if (_search != '') {
                      _searchResults = HistoricalSiteList.search(value);
                      int _end = _searchResults.length > 5 ? 5 : _searchResults.length;
                      _searchResults = _searchResults.sublist(0, _end);
                    } else {
                      _searchResults =
                          HistoricalSiteList.historicalSites.sublist(0, 5);
                    }
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8,),
            Divider(
              height: 1,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.grey[200],
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 16),
                      if (_search == '')
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.find_in_page_outlined,
                                size: 24, // Điều chỉnh kích thước của biểu tượng
                                color: Colors.black, // Tuỳ chỉnh màu sắc của biểu tượng
                              ),
                              SizedBox(
                                  width: 4), // Thêm một khoảng cách giữa Icon và Text
                              Text(
                                'Suggestions',
                                style: TextStyle(
                                  fontSize: 20,
                                  color:
                                      Colors.black87, // Tuỳ chỉnh màu sắc của văn bản
                                  fontWeight:
                                      FontWeight.bold, // Tuỳ chỉnh kiểu chữ của văn bản
                                ),
                              ),
                            ],
                          ),
                        ),
                      ListView.builder(
                        padding: EdgeInsets.only(
                            top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: _searchResults.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HistoricalSiteDetailPage(
                                        historicalSite: _searchResults[index],
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
                                              borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
                                              child: Image.asset(
                                                _searchResults[index].image,
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
                                                    _searchResults[index].name,
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
                                                      _searchResults[index].address,
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
                                                    _searchResults[index]
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
                                            icon: _searchResults[index].isFavor
                                                ? Icon(Icons.favorite, color: Colors.red.shade300)
                                                : Icon(Icons.favorite_border, color: Colors.black),
                                            onPressed: () {
                                              setState(() {
                                                _searchResults[index].isFavor = !_searchResults[index].isFavor;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (index < _searchResults.length - 1)
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
            ),
          ],
        ),
    );
  }
}
