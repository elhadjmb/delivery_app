import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/images.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colour.orange,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colour.orange, Colour.yellow],
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 80, bottom: 40),
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: new Border.all(
                              color: Colors.white,
                              width: 4.0,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 65.0,
                            backgroundImage: AssetImage(Images.burger),
                          ),
                        ),
                        Text(
                          'Burger Man',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Client',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
