//TODO adding the register methodes

import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/services/Auth.dart';
import 'package:delivery_app/views/LoginView.dart';
import 'package:delivery_app/views/SignupView.dart';
import 'package:delivery_app/views/TypeSelectionView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class SignupViewController{
   final authService _auth= authService();
// if it doesnt work witch it up to a simple void and put ontap on async
//also if theres an error concering the empty type change string parameter into TextEditingController

    Future signUpClient(String email,String pass,String name,String addr,String phone,BuildContext cont) async{
        dynamic result = await _auth.registerWithEmailAndPassword(email, pass);/*.then((result) => 
        the result that we get here should be the id from our main model which is User.dart
        dbRef(the databse name on the service ).child(result.user.uid).set({
        "email": name,
        "age": phone,
        "address":addr,
        "usertype":  CLIENT    //depends on which type of usertype is selected
        https://medium.com/firebase-tips-tricks/how-to-use-firebase-authentication-in-flutter-50e8b81cb29f
      })

      .catchError((err) {
       showDialogNotfilled(cont);
    });  
        */

        if (email.isEmpty ||pass.isEmpty ||phone.isEmpty  ){
           showDialogNotfilled(cont);
        }
        else{
           if (result==null){
       //show the alert widget
      showDialogError(cont);
       //return AlertWidget();
        } else{
         //successful
         LoginScreen();
         
        } 
        }
      }

       Future signUpServer(String email,String pass,String name,String addr,String phone,BuildContext cont) async{
        dynamic result = await _auth.registerWithEmailAndPassword(email, pass);/*.then((result) => 
        the result that we get here should be the id from our main model which is User.dart
        dbRef(the databse name on the service ).child(result.user.uid).set({
        "email": name,
        "age": phone,
        "address":addr,
        "usertype":  SERVER  //depends on which type of usertype is selected
        https://medium.com/firebase-tips-tricks/how-to-use-firebase-authentication-in-flutter-50e8b81cb29f
      })

      .catchError((err) {
       showDialogNotfilled(cont);
    });  
        */

        if (email.isEmpty ||pass.isEmpty ||phone.isEmpty  ){
           showDialogNotfilled(cont);
        }
        else{
           if (result==null){
       //show the alert widget
      showDialogError(cont);
       //return AlertWidget();
        } else{
         //successful
         LoginScreen();
         
        } 
        }
      }

      Future signUpDeliverer(String email,String pass,String name,String addr,String phone,BuildContext cont) async{
        dynamic result = await _auth.registerWithEmailAndPassword(email, pass);/*.then((result) => 
        the result that we get here should be the id from our main model which is User.dart
        dbRef(the databse name on the service ).child(result.user.uid).set({
        "email": name,
        "age": phone,
        "address":addr,
        "usertype":  DELIVERER  //depends on which type of usertype is selected
        https://medium.com/firebase-tips-tricks/how-to-use-firebase-authentication-in-flutter-50e8b81cb29f
      })

      .catchError((err) {
       showDialogNotfilled(cont);
    });  
        */

        if (email.isEmpty ||pass.isEmpty ||phone.isEmpty  ){
           showDialogNotfilled(cont);
        }
        else{
           if (result==null){
       //show the alert widget
      showDialogError(cont);
       //return AlertWidget();
        } else{
         //successful
         LoginScreen();
         
        } 
        }
      }

  void showDialogNotfilled(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Error"),
          content: new Text("Make sur to fill all the required fields"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

    void showDialogError(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Error"),
          content: new Text("Error occured try again!"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  



}