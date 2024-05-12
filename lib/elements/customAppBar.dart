import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  final String title;
  final bool isDetail; // Flag for back button visibility

  final Function(bool) onFavoriteChanged; // Callback for favorite state change

  CustomAppBar({
    this.height = kToolbarHeight,
    required this.title,
    required this.isDetail,
    required this.onFavoriteChanged,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  State<StatefulWidget> createState() => _AppBarStage();
}

class _AppBarStage extends State<CustomAppBar> {
  bool isFavorite = false; // Shared state for favorite icon

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      widget.onFavoriteChanged(isFavorite); // Trigger external callback
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Back button (conditionally visible)
          if (widget.isDetail) ...[ // Spread operator for conditional widget
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Material(
                  color: Colors.grey.withOpacity(0.4), // Button color
                  child: InkWell(
                    splashColor: Colors.grey,
                    onTap: () => Navigator.pop(context),
                    child: SizedBox(
                      width: 45, height: 45,
                      child: Icon(Icons.arrow_back_rounded, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],

          // Favorite button
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Material(
                color: Colors.grey.withOpacity(0.4), // Button color
                child: InkWell(
                  splashColor: Colors.grey,
                  onTap: toggleFavorite,
                  child: SizedBox(
                    width: 45, height: 45,
                    child: isFavorite ? Icon(Icons.favorite, color: Colors.red.shade300) : Icon(Icons.favorite_border, color: Colors.white)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}