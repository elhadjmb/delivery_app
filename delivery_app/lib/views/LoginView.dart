import 'dart:ui';
import 'package:delivery_app/views/FrequentWidgets.dart';
import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/images.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        fontFamily: 'DancingScript',
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
                            child: LogAndSignUpTextField(
                              placeHolder:
                                  StringOuter.textField["email"] as String,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: LogAndSignUpTextField(
                              placeHolder:
                                  StringOuter.textField["password"] as String,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Bellow is the login button :
                    InkWell(
                      //TODO : Bellow goes Login function :
                      onTap: () => {},
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
                            StringOuter.button["signIn"] as String,
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
                      //TODO: Bellow goes SignUp function :
                      onTap: () => {},
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
                            StringOuter.button["signUp"] as String,
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
    );
  }
}
