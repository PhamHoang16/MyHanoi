import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  List<HistoricalSiteList> _searchResults = HistoricalSiteList.historicalSites.sublist(0,5);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Search"),
          centerTitle: true,
          backgroundColor: Colors.grey[200], // Xám nhạt
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: _searchController,
                  onChanged: (value) {
                    setState(() {
                      _search = value;
                      print("search: " + _search);
                      if (_search != ''){
                        _searchResults = HistoricalSiteList.search(value);
                      } else {
                        _searchResults = HistoricalSiteList.historicalSites.sublist(0,5);
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
                      SizedBox(width: 4), // Thêm một khoảng cách giữa Icon và Text
                      Text(
                        'Suggestions',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87, // Tuỳ chỉnh màu sắc của văn bản
                          fontWeight: FontWeight.bold, // Tuỳ chỉnh kiểu chữ của văn bản
                        ),
                      ),
                    ],
                  ),
                ),

              ListView.builder(
                padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0, bottom: 16.0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
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
                              width: MediaQuery.of(context).size.width * 0.25,
                              // height: MediaQuery.of(context).size.height,
                              child: Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1, // tỉ lệ khung hình vuông
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.asset(
                                        _searchResults[index].image,
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
                                  padding: EdgeInsets.only(top: 0, left: 0.0, right: 0.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _searchResults[index].name,
                                        maxLines: 1, // Giới hạn số dòng của mô tả
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        _searchResults[index].address,
                                        maxLines: 2, // Giới hạn số dòng của mô tả
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
                                      icon: _searchResults[index].isFavor
                                          ? Icon(Icons.favorite, color: Colors.red.shade300)
                                          : Icon(Icons.favorite_border, color: Colors.white),
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
