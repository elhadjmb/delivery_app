import 'package:flutter/material.dart';
import 'controllers/LaunchController.dart';

void main() {
  runApp(new MaterialApp(
    //TODO: call a controller (LaunchController) that checks if user is signed in then pass
    home: LaunchController(),
  ));
}
