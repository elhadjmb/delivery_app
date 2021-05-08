import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/images.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colour.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.pizza),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 43.0),
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
                    // Below is the email text field
                    Padding(
                      padding: const EdgeInsets.all(12.0),
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
                          labelText: StringOuter.textField["email"] as String,
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // Below is the password text field
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        obscureText: true,
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
                              StringOuter.textField["password"] as String,
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // Below is the first name text field
                    Padding(
                      padding: const EdgeInsets.all(12.0),
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
                          labelText:
                              StringOuter.textField["first name"] as String,
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // Below is the last name text field
                    Padding(
                      padding: const EdgeInsets.all(12.0),
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
                          labelText:
                              StringOuter.textField["last name"] as String,
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // Below is the Adress text field
                    Padding(
                      padding: const EdgeInsets.all(12.0),
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
                          labelText: StringOuter.textField["adress"] as String,
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    //bellow is the signUP button
                    InkWell(
                      //TODO: Bellow goes SignUp FUNCTION :
                      onTap: () {},
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
