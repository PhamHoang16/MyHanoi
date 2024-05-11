import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hanoi_travel/home/detail_page.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  final String title;
  final bool isDetail;

  CustomAppBar({
    this.height = kToolbarHeight,
    required this.title,
    required this.isDetail,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  State<StatefulWidget> createState() => _AppBarStage();
}

class _AppBarStage extends State<CustomAppBar>{
  Icon favoriteIcon1 = Icon(Icons.favorite_border, color: Colors.white);
  bool isFavorite1 = false;
  void tapFavorite1() {
    setState(() {
      isFavorite1 = isFavorite1 == true ? false : true;
      if (isFavorite1) {
        favoriteIcon1 = Icon(Icons.favorite, color: Colors.red.shade300);
      } else {
        favoriteIcon1 = Icon(Icons.favorite_border, color: Colors.white);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Material(
              color: Colors.grey.withOpacity(0.4), // Button color
              child: InkWell(
                splashColor: Colors.grey,
                //splashColor: Colors.grey, // Splash color
                onTap: (){
                  Navigator.pop(context);
                },
                child: SizedBox(width: 45, height: 45, child: Icon(Icons.arrow_back_rounded, color: Colors.white,)),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Material(
              color: Colors.grey.withOpacity(0.4), // Button color
              child: InkWell(
                splashColor: Colors.grey,
                //splashColor: Colors.grey, // Splash color
                onTap: tapFavorite1,
                child: SizedBox(width: 45, height: 45, child: favoriteIcon1),
              ),
            ),
          ),
        ),
      ],
    ),
    );
  }

}