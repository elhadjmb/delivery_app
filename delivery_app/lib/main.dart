// @dart=2.9
import 'package:delivery_app/models/User.dart';
import 'package:delivery_app/services/Auth.dart';
import 'package:flutter/material.dart';
import 'controllers/LaunchController.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
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
