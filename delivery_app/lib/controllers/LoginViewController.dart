
// ignore: import_of_legacy_library_into_null_safe
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/services/Auth.dart';
import 'package:delivery_app/views/widgets/View.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
class LoginViewController{
  final AuthService _auth= AuthService();

 Future signIn(String email,String pass,BuildContext context) async{
       if (email.isEmpty || pass.isEmpty){
         showDialogNotfilled(context);
       }
       //TODO: CHECK ALL THE EXCEPTIONS CONCERNING THE FIREBASE EMAIL AND PASSWORD RULES AND CREATE A WIDGET FOREM
       else{
       dynamic result = await  _auth.signInWithEmailAndPassword(email,pass); 
       DocumentSnapshot ds = await 
        FirebaseFirestore.instance.collection('users').doc(result.uid).get();
        var name = ds.data()['type'];
        
         if(result == null){
          showDialogerr(context);
         }
         else{
           print("success");
          if (name == "CLIENT") {
            print("client");
          Navigator.push(
            context,
            MaterialPageRoute(builder:(context) => View(),
            ),
          );
        } else if (name== "SERVER") {
          print("server");
          Navigator.push(
            context,
            MaterialPageRoute(builder:(context) => View(),
            ),
          );
        } else if (name == "DELIVERER") {
          print("delivery");
          Navigator.push(
            context,
            MaterialPageRoute(builder:(context) => View(),
            ),
          );
      }
    }
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
  void showDialogerr(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Error"),
          content: new Text("Error happend during the signin try again!"),
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