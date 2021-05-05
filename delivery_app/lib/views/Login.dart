import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/LoginBackground.jpg"),
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
                      "Foody",
                      style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontWeight: FontWeight.bold,
                        fontSize: 78.0,
                        color: Colors.black,
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
                                labelText: "Email",
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
                                labelText: "Password",
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
                      //TODO : Bellow goes Login function :
                      onTap: () => {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        height: 52.0,
                        decoration: BoxDecoration(
                          //color: Colors.black,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 0.0),
                            colors: <Color>[
                              Color(0xffee0000),
                              Color(0xffeeee00),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(14.2),
                        ),
                        child: Center(
                          child: Text(
                            "LogIn",
                            style: TextStyle(
                              color: Colors.white,
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
                          //color: Colors.black,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 0.0),
                            colors: <Color>[
                              Color(0xffeeee00),
                              Color(0xffee0000),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(14.2),
                        ),
                        child: Center(
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                              color: Colors.white,
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
