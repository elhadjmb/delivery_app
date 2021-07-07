import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/images.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/models/User.dart';
import 'package:delivery_app/views/widgets/CustomCardWidget.dart';
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
              Flexible(
                flex: 2,
                child: Center(
                  child: Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: new Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 75.0,
                      backgroundImage: AssetImage(Images.userPicture),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Center(
                  child: Column(children: [
                    CustomCardWidget(label: "Type", text: _userType,),
                    CustomCardWidget(label: "Name", text: _userName,),
                    CustomCardWidget(label: "Phone", text: _userPhone,),
                    CustomCardWidget(label: "Address", text: _userAddress,),
                  ],)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
