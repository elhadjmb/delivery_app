import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/images.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/models/User.dart';
import 'package:delivery_app/views/widgets/NotificationCardWidget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var counter = 0;
  //TODO: find user object and assign its attributes to each _userVariable

  String _userName = "Burger Man"; //user.name;
  var _userType = "Client"; //user.type;

  //TODO: Find where to cram these information on the page ui
  String _userAddress = "burger"; //user.address;
  String _userPhone = "burger"; //user.phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringOuter.title["profile"] as String,
          style: TextStyle(
            fontFamily: StringInner.fonts["main"],
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
            color: Colour.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colour.orange,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colour.orange, Colour.paleOrange],
                    ),
                  ),
                  child: Flexible(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 70.0,
                          ),
                          Container(
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
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            _userName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            _userType,
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
              ),
              Expanded(
                flex: 6,
                child: Center(
                  //TODO: Make a listview builder with NotificationCardWidgets from user orders
                  child: ListView(
                    children: [
                      NotificationCardWidget(text: 'Notification1/Order'),
                      NotificationCardWidget(text: 'Notification2/Order'),
                      NotificationCardWidget(text: 'Notification3/Order'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
