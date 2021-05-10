import 'dart:html';

import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/services/Auth.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/models/User.dart';
import 'package:delivery_app/views/LoginView.dart';
import 'package:flutter/semantics.dart';
import 'package:provider/provider.dart';
class LoginViewController{
  final authService _auth= authService();

//sign in methode 
 Future signInClient(String email,String pass,BuildContext context) async{
       dynamic result = await  _auth.signInWithEmailAndPassword(email,pass).then((result) {
         /* Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => ClientView(),
          ),   );*/
        })
       ;

 }
 
 
 Future signInServer(String email,String pass) async{
       dynamic result = await  _auth.signInWithEmailAndPassword(email,pass).then((result) {
         /* Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) =>ServerView(),
          ),   );*/
        });

 }
 
 
 Future signInDeliverer(String email,String pass) async{
       dynamic result = await  _auth.signInWithEmailAndPassword(email,pass).then((result) {
         /* Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => DelivererView(),
          ),   );*/
        });

 }
 /*Future signIn(String email,String pass) async{
       dynamic result = await  _auth.signInWithEmailAndPassword(email,pass).then((result) {
         if (UserType == Client) {
          Navigator.pushReplacementNamed(context, '/StudentsPage');
        } else if (UserType == SERVER) {
          Navigator.pushReplacementNamed(context, '/TeacherPage');
        } else if (UserType == 'DELIVERER') {
          Navigator.pushReplacementNamed(context, '/AdminPage');
        }
        });

 }*/




}