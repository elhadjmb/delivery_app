import 'dart:html';

//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/services/Auth.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/models/User.dart';
import 'package:delivery_app/views/LoginView.dart';
import 'package:flutter/semantics.dart';
import 'package:provider/provider.dart';
class LoginViewController{
  final AuthService _auth= AuthService();

//sign in methode 
 
/*
 
 Future signIn(String email,String pass,BuildContext context) async{
       dynamic result = await  _auth.signInWithEmailAndPassword(email,pass).then((result) async {
         if(result ==null){
          var error = 'Could not sign in with those credentials';
          
         }
         else{
      
       // call here the user object from firestore 
       //need some testing on this ,try printing the result variable
       DocumentSnapshot ds = await 
       Firestore.instance.collection('users').document(result.id).get();
       var name = ds.data['UserType'];
        if (name == UserType.CLIENT) {
          Navigator.pushReplacementNamed(context, '/StudentsPage');
        } else if (name== UserType.SERVER) {
          Navigator.pushReplacementNamed(context, '/TeacherPage');
        } else if (name == UserType.DELIVERER) {
          Navigator.pushReplacementNamed(context, '/AdminPage');
        }
         }
        });

 }



*/
}