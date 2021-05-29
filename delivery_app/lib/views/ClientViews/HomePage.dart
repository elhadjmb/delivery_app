import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/testdata/data.dart';
import 'package:delivery_app/views/ClientViews/Widgets/OurRestaurants.dart';
import 'package:delivery_app/views/ClientViews/Widgets/SuggestedDishes.dart';
import 'package:delivery_app/views/LoginView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchBarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.logout),
          iconSize: 30.0,
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder:(context) =>LoginScreen(),
            ),
          );
          },
        ),
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
          backgroundColor: Colour.orange,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: searchBarController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      width: 0.8,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  hintText: 'Search Food or Restaurants',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SuggestedDishes(),
            RestaurantsList(),
          ],
        ),
      ),
    );
  }
}
