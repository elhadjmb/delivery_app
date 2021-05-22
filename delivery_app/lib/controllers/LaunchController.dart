//TODO: Create a controller that directs the user to either
// WelcomeView or HomeView
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/views/widgets/View.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/models/User.dart';
import 'package:delivery_app/views/LoginView.dart';
import 'package:provider/provider.dart';

class LaunchController extends StatelessWidget{
  @override
  Widget build(BuildContext context)  {
  /*You can test ani screen here ,i put loginscreen momentarily */
    
   return View();
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
