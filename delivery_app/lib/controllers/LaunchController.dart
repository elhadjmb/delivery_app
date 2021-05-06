//TODO: Create a controller that directs the user to either
// WelcomeView or HomeView
import 'package:flutter/material.dart';
import 'package:delivery_app/models/User.dart';
import 'package:delivery_app/views/LoginView.dart';
//import 'package:provider/provider.dart';

class LaunchController extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  /*You can test ani screen here ,i put loginscreen momentarily */
    return LoginScreen();
    //TODO:i ll add  a provider from which i can determine whether to direct the user to the welcomeview or homeview
     /*
     final user = Provider.of<UserSignInData>(context);
     // return either the Welcomeview or Homeview
    if (user == null){
      return welcomeview();
    } else {
      return homeview();
    }
      */
  }

}
