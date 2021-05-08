import 'package:flutter/material.dart';
import 'controllers/LaunchController.dart';

void main() {
  runApp(new MaterialApp(
    home: LaunchController(),
    /*
    StreamProvider<User>.value(
      value: AuthService().user,
      initialData: null,
      child: new MaterialApp(
      home: LaunchController(),
    ),
  )
     */
  ));
}
