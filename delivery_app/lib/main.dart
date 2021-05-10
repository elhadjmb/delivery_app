import 'package:flutter/material.dart';
import 'controllers/LaunchController.dart';

void main() {
  runApp(new MaterialApp(
    home: LaunchController(),
    /*
    switch to provider: ^3.1.0 if its not working
   StreamProvider<UserSignInData>.value(
        value: authService().user,
        initialData: UserSignInData(id: '', phone: ''),
        child: new MaterialApp(
        home: LaunchController(),
      ),
    )
     */
  ));
}
