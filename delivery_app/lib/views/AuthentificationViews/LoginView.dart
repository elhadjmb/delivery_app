import 'dart:ui';

import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/images.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/controllers/LoginViewController.dart';
import 'package:delivery_app/views/AuthentificationViews/SignupView.dart';
import 'package:delivery_app/views/ClientViews/HomePage.dart';
import 'package:delivery_app/views/ClientViews/Widgets/Checkoutscreen.dart';
import 'package:delivery_app/views/RestaurantViews/widgets/RestaurantBottomNavBar.dart';
import 'package:delivery_app/views/widgets/View.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email_TEC = TextEditingController();
  TextEditingController password_TEC = TextEditingController();
  LoginViewController sven = LoginViewController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colour.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.LoginBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 81.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        StringOuter.title["mainTitle"] as String,
                        style: TextStyle(
                          fontFamily: StringInner.fonts["main"],
                          fontWeight: FontWeight.bold,
                          fontSize: 78.0,
                          color: Colour.black,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(23.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: TextField(
                                controller: email_TEC,
                                showCursor: false,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  labelText:
                                      StringOuter.textField["email"] as String,
                                  labelStyle: TextStyle(color: Colors.white),
                                ),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: TextField(
                                controller: password_TEC,
                                showCursor: false,
                                obscureText: true,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  labelText: StringOuter.textField["password"]
                                      as String,
                                  labelStyle: TextStyle(color: Colors.white),
                                ),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Bellow is the login button :
                      InkWell(
                        onTap: () {
                          // sven.signIn(email_TEC.text.trim(), password_TEC.text, context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.4,
                          height: 52.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 0.0),
                              colors: <Color>[
                                Colour.red,
                                Colour.yellow,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(14.2),
                          ),
                          child: Center(
                            child: Text(
                              StringOuter.button["logIn"] as String,
                              style: TextStyle(
                                color: Colour.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      //Bellow is the SignUp button :
                      InkWell(
                        //TODO: Bellow goes SignUp page :
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.4,
                          height: 52.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 0.0),
                              colors: <Color>[
                                Colour.yellow,
                                Colour.red,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(14.2),
                          ),
                          child: Center(
                            child: Text(
                              StringOuter.button["register"] as String,
                              style: TextStyle(
                                color: Colour.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
