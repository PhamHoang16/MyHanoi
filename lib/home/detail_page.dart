import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageStage createState() => _DetailPageStage();
}

class _DetailPageStage extends State<DetailPage> {
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: screenHeight*0.5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: screenWidth,
                      child: Image(image: AssetImage("assets/images/hotel1.jpg"), fit: BoxFit.cover,)
                  ),
                  Container(
                      child: Image(image: AssetImage("assets/images/hotel2.jpg"), fit: BoxFit.cover,)
                  )
                ],
              ),
            ),
            Container(
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
                          onTap: (){},
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
            ),

          ],
        ),
      ),
    );
  }
}