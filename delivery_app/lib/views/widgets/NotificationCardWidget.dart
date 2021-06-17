import 'package:delivery_app/constants/colours.dart';
import 'package:flutter/material.dart';

class NotificationCardWidget extends StatelessWidget {
  final String text;

  NotificationCardWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      color: Colour.yellow,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(
              color: Colour.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
