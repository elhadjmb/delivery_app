import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/testdata/data.dart';
import 'package:delivery_app/testmodels/restaurant.dart';
import 'package:delivery_app/views/RestaurantViews/widgets/Rating.dart';
import 'package:flutter/material.dart';

class RestaurantProfile extends StatefulWidget {
  @override
  _RestaurantProfileState createState() => _RestaurantProfileState();
}

class _RestaurantProfileState extends State<RestaurantProfile> {
  Restaurant restaurant = restaurants[0];
  List<String> usersComments = comments;
  List<String> users = userNames;
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
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(restaurant.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, Colour.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                height: 80,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "  " + restaurant.name,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colour.purple,
              ),
            ),
          ),
          RatingStars(
            rating: restaurant.rating,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(restaurant.address),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 1,
              color: Colour.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Comments :",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.14,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.14,
                      decoration: BoxDecoration(
                        color: Colour.gray,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(users[0] + " :"),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(usersComments[0]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.14,
                      decoration: BoxDecoration(
                        color: Colour.gray,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(users[1] + " :"),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(usersComments[1]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.14,
                      decoration: BoxDecoration(
                        color: Colour.gray,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(users[2] + " :"),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(usersComments[2]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.14,
                      decoration: BoxDecoration(
                        color: Colour.gray,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(users[3] + " :"),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(usersComments[3]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.14,
                      decoration: BoxDecoration(
                        color: Colour.gray,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(users[4] + " :"),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(usersComments[4]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}