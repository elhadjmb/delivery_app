import 'package:delivery_app/services/Auth.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/models/User.dart';
import 'package:delivery_app/views/LoginView.dart';
import 'package:provider/provider.dart';


class HomeViewController{
  //sign out button 
  final authService _auth= authService();
Future signOutbutton() async {
   await _auth.signOut();
  }
  //documentation https://medium.com/firebase-tips-tricks/how-to-use-cloud-firestore-in-flutter-9ea80593ca40
}