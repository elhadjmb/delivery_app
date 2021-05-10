import 'package:delivery_app/services/Auth.dart';
class WelcomeViewController{

  final authService _auth= authService();
  
  //singin anony methode
  Future signInAno() async {
    dynamic result = await _auth.singInAnon();
    if (result==null){
    //display error widget with try again
    } 
    else{
  print('signed in');
  //get the new screeen that takes us to homeview
 // return homeview();
       } 
  }





}