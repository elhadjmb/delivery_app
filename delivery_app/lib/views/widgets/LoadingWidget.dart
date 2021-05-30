import 'package:delivery_app/constants/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colour.orange,
      child: Center(
        child: SpinKitFadingCircle(
          color: Colour.white,
          size: 50.0,
        ),
      ),
    );
  }
}