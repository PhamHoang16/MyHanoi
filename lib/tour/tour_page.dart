import 'package:flutter/material.dart';
import 'package:hanoi_travel/tour/tour_list.dart';

class TourPage extends StatefulWidget {
  @override
  _TourPageState createState() => _TourPageState();
}

class _TourPageState extends State<TourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tour List'),
      ),
      body: ListView.builder(
        itemCount: TourList.tours.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(TourList.tours[index].name),
            subtitle: Text(TourList.tours[index].description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TourDetailPage(tour: TourList.tours[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class TourDetailPage extends StatefulWidget {
  final TourList tour;

  TourDetailPage({required this.tour});

  @override
  _TourDetailPageState createState() =>
      _TourDetailPageState();
}

class _TourDetailPageState extends State<TourDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tour.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.tour.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              widget.tour.description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Itinerary:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.tour.itinerary.map((item) => Text(item)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}