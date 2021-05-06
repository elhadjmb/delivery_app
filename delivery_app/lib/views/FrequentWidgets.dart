import 'dart:ui';

import 'package:flutter/material.dart';

class LogAndSignUpTextField extends StatelessWidget {
  final String placeHolder;

  const LogAndSignUpTextField({Key? key, required this.placeHolder})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      showCursor: false,
      obscureText: true,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        labelText: placeHolder,
        labelStyle: TextStyle(color: Colors.white),
      ),
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
