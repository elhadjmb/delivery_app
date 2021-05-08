import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/images.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:flutter/material.dart';

class SignupOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colour.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.burger),
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
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text(
                        StringOuter.title["account choice"] as String,
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: InkWell(
                        //TODO: here goes deliveryguy singup Page
                        onTap: () {},
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
                              StringOuter.button["delivery"] as String,
                              style: TextStyle(
                                color: Colour.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: InkWell(
                        //TODO: here goes Restaurant signup Page
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
                              StringOuter.button["restaurant"] as String,
                              style: TextStyle(
                                color: Colour.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: InkWell(
                        //TODO: here goes client registration Page
                        onTap: () {},
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
                              StringOuter.button["client"] as String,
                              style: TextStyle(
                                color: Colour.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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
