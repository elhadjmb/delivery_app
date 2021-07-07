import 'package:delivery_app/services/Auth.dart';
import 'package:delivery_app/views/widgets/View.dart';
import 'package:flutter/material.dart';
class HomePageCon{
  //sign out button 
  final AuthService _auth= AuthService();
Future signOutbutton(BuildContext context) async {
   await _auth.signOut();
   /*  Navigator.push(
            context,
            MaterialPageRoute(builder:(context) => View(),
            ),
          );*/
  }
}