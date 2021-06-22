import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/testmodels/food.dart';
import 'package:delivery_app/views/RestaurantViews/widgets/Buttons.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringOuter.title["mainTitle"] as String,
          style: TextStyle(
            fontFamily: StringInner.fonts["main"],
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
            color: Colour.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colour.purple,
      ),
      backgroundColor: Colour.white,
      body: ListView(
        children: <Widget>[
          Center(
              child: Padding(
            padding: EdgeInsets.only(top: 13.0),
            child: Text(
              "New dish settings",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          )),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MenuButton(
                  //TODO: bellow goes a function that adds a picture
                  onTapp: () {},
                  label: "select photo",
                  icon: Icon(
                    Icons.add_a_photo_outlined,
                  ),
                ),
                MenuButton(
                  //TODO: bellow goes a function that adds ingredients
                  onTapp: () {},
                  label: "ingredient",
                  icon: Icon(Icons.check_box_outlined),
                ),
                MenuButton(
                  //TODO: bellow goes a function that adds dish name
                  onTapp: () {},
                  label: "dish name",
                  icon: Icon(Icons.food_bank),
                ),
                MenuButton(
                  //TODO: bellow goes a function that adds the price
                  onTapp: () {},
                  label: "price",
                  icon: Icon(Icons.attach_money),
                ),
                MenuButton(
                  //TODO: bellow goes a function that adds the new dish
                  onTapp: () {},
                  label: "Add dish",
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ),
          SizedBox(child: Container(color: Colour.black), height: 1.0),
          //TODO: bellow goes a listView builder of dishes on the menu
        ],
      ),
    );
  }
}
