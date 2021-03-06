import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/testdata/data.dart';
import 'package:delivery_app/testmodels/food.dart';
import 'package:delivery_app/testmodels/restaurant.dart';
import 'package:delivery_app/views/RestaurantViews/NewDishSettings.dart';
import 'package:delivery_app/views/RestaurantViews/widgets/Buttons.dart';
import 'package:delivery_app/views/RestaurantViews/widgets/IngredientsScreen.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Restaurant restaurant = restaurants[0];

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
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewDish(),
                    ),
                  );
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(
                      color: Colour.purple,
                      width: 3,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Add a new dish ",
                        style: TextStyle(
                          color: Colour.purple,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.add, color: Colour.purple),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(child: Container(color: Colour.black), height: 1.0),
          //TODO: bellow goes a listView builder of dishes on the menu
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(10.0),
              crossAxisCount: 2,
              children: List.generate(widget.restaurant.menu.length, (index) {
                Food food = widget.restaurant.menu[index];
                return _buildMenuItem(food);
              }),
            ),
          ),
        ],
      ),
    );
  }

  _buildMenuItem(Food menuItem) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 175.0,
            width: 175.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(menuItem.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          Container(
            height: 175.0,
            width: 175.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black87.withOpacity(0.3),
                  Colors.black54.withOpacity(0.3),
                  Colors.black38.withOpacity(0.3),
                ],
                stops: [0.1, 0.4, 0.6, 0.9],
              ),
            ),
          ),
          Positioned(
            bottom: 65.0,
            child: Column(
              children: <Widget>[
                Text(
                  menuItem.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                Text(
                  '\$${menuItem.price}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10.0,
            right: 10.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colour.purple,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: IconButton(
                icon: Icon(Icons.settings),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => IngredientsScreen(
                                food: menuItem,
                              )));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}