import 'package:delivery_app/constants/colours.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String label;
  final String text;

  CustomCardWidget({required this.text, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      color: Colour.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Row(
            children: [
              Center(
                child: Text(
                  this.label,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colour.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Spacer(flex: 1,),
              Center(
                child: Text(
                  this.text,
                  style: TextStyle(
                    color: Colour.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
