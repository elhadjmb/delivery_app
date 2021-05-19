import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/images.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  List<bool> _selections = List.generate(3, (_) => false);
  TextEditingController email_Controler = TextEditingController();
  TextEditingController password_Controler = TextEditingController();
  TextEditingController phone_Controler = TextEditingController();
  TextEditingController name_Controler = TextEditingController();
  TextEditingController adress_Controler = TextEditingController();
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

                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: ToggleButtons(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("delivery"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("restaurant"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("client"),
                          ),
                        ],
                        isSelected: _selections,
                        onPressed: (int index) {
                          setState(() {
                            for (var i = 0; i < 3; i++) {
                              _selections[i] = false;
                            }
                            _selections[index] = !_selections[index];
                          });
                        },
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        color: Colour.black,
                        selectedColor: Colour.white,
                        borderColor: Colour.white,
                      ),
                    ),
                    // Below is the email text field
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        controller: email_Controler,
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
                        controller: password_Controler,
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
                    // Below is the phone text field
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        controller: phone_Controler,
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
                              StringOuter.textField["phone number"] as String,
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // Below is the  name text field
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        controller: name_Controler,
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
                          labelText: StringOuter.textField["name"] as String,
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
                        controller: adress_Controler,
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
                      //when using textfields data use TFname_controler.text
                      //they are declared above
                      onTap: () {
                        if (_selections[0]) {
                          //TODO: delivery worker SignUp function
                        }
                        if (_selections[1]) {
                          //TODO: restaurant SignUp function
                        }
                        if (_selections[2]) {
                          //TODO: client SignUp function
                        }
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
