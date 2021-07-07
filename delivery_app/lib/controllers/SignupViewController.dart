//TODO adding the register methodes

import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/services/Auth.dart';
import 'package:delivery_app/views/RestaurantViews/widgets/RestaurantBottomNavBar.dart';
import 'package:delivery_app/views/ServerViews/MainView.dart';
import 'package:delivery_app/views/widgets/View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupViewController {
 
   final AuthService _auth= AuthService();
// if it doesnt work witch it up to a simple void and put ontap on async
//also if theres an error concering the empty type change string parameter into TextEditingController

//Client register class
    Future signUpClient(String email,String pass,String name,String addr,String phone,BuildContext cont) async{ 
        dynamic result = await _auth.registerWithEmailAndPassword(email, pass,name,addr,phone,UserType.CLIENT);
           if (result == null){
           //show the alert widget
         showDialogError(cont);
        
        } else{
         //successful
         print("success");
        Navigator.push(
            cont,
             MaterialPageRoute(
              builder: (context) => View(ide: result.uid),
            ),
          );
        } 
    }

    //Server register class
    Future signUpServer(String email,String pass,String name,String addr,String phone,BuildContext cont) async{ 
        dynamic result = await _auth.registerWithEmailAndPassword(email, pass,name,addr,phone,UserType.SERVER);
        if (result == null){
           //show the alert widget
         showDialogError(cont);
        
        } else{
         //successful
         print("success");
        Navigator.push(
            cont,
             MaterialPageRoute(
              builder: (context) => Footer(),
            ),
          );
        } 
    }
        
       
   //Deliverer register class
    Future signUpDeliverer(String email,String pass,String name,String addr,String phone,BuildContext cont) async{ 
        dynamic result = await _auth.registerWithEmailAndPassword(email, pass,name,addr,phone,UserType.DELIVERER);
        if (result == null){
           //show the alert widget
         showDialogError(cont);
        
        } else{
         //successful
         print("success");
        Navigator.push(
            cont,
             MaterialPageRoute(
              builder: (context) => DelivView(),
            ),
          );
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
