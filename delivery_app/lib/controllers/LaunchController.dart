
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/views/AuthentificationViews/LoginView.dart';
import 'package:flutter/material.dart';

class LaunchController extends StatelessWidget{
  @override
  Widget build(BuildContext context)  {
  /*You can test ani screen here ,i put loginscreen momentarily */
    
   return LoginScreen();
  // /*  
   /*  final user = Provider.of<User>(context);

     // return either the Welcomeview or Homeview
    if (user.id== ''){
      //return WelcomeView();
     
      
    } else {
      DocumentSnapshot ds = await 
       Firestore.instance.collection('users').document(user.id).get();
  var name = ds.data['UserType'];

       if(name==UserType.DELIVERER){
         return DelivererView();
      }
      if(name==UserType.CLIENT){
         return ClientView();
      }
      if(name==UserType.SERVER){
         return ServerView();
      }
    }
      */
  }

}
