import 'package:delivery_app/models/User.dart';
import 'package:delivery_app/services/Auth.dart';
import 'package:flutter/material.dart';
import 'controllers/LaunchController.dart';

void main() {
  runApp(new MaterialApp(
    home: LaunchController(),
    /*
    //switch to provider: ^3.1.0 if its not working
   StreamProvider<User>.value(
        value: AuthService().user,
        initialData: User(id: '', phone: ''),
        child: new MaterialApp(
        home: LaunchController(),
      ),
    )
     */
  ));
}
