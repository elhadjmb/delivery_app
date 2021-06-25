import 'package:delivery_app/constants/colours.dart';
import 'package:flutter/material.dart';

class RatingStars extends StatefulWidget {
  final int rating;

  const RatingStars({required this.rating});
  @override
  _RatingStarsState createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  @override
  Widget build(BuildContext context) {
    List<Icon> stars = [
      Icon(Icons.star),
      Icon(Icons.star),
      Icon(Icons.star),
      Icon(Icons.star),
      Icon(Icons.star),
    ];
    for (var i = 0; i < widget.rating; i++) {
      stars[i] = Icon(
        Icons.star,
        color: Colour.yellow,
      );
    }
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          stars[0],
          stars[1],
          stars[2],
          stars[3],
          stars[4],
        ],
      ),
    );
  }
}
