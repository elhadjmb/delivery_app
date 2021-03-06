import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/testmodels/food.dart';
import 'package:delivery_app/testmodels/restaurant.dart';
import 'package:delivery_app/views/ClientViews/Widgets/DishScreen.dart';
//import 'package:delivery_app/models/Restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;
  String ide;
  RestaurantScreen({required this.restaurant,required this.ide});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
     _buildMenuItem(Food menuItem,String restname) {
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
                color: Colour.orange,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: IconButton(
                icon: Icon(Icons.add),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                context,MaterialPageRoute(
                builder: (_) => DishIng(food: menuItem,ide: widget.ide,restname: restname,))
                );
                },
              ),
            ),
          ),
        ],
      ),
    );
 }

  @override
  Widget build(BuildContext context) {
    /*WillPopScope(
           onWillPop: () async => false,
          child: Scaffold(*/
    return WillPopScope(
           onWillPop: () async => false,
          child: Scaffold(
        body: Column(
          children:<Widget> [
            Stack(
              children: <Widget>[
                   Hero(
                      tag: widget.restaurant.imageUrl,
                      child: Image(
                      height: 220.0,
                      width: MediaQuery.of(context).size.width,
                      image: AssetImage(widget.restaurant.imageUrl),
                      fit: BoxFit.cover,
                  ),
                   ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                          iconSize: 30.0,
                          onPressed: () => Navigator.pop(context),//showDialogerr(context);
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite),
                          color:  Colour.white,
                          iconSize: 35.0,
                          //the favorites function will be put here
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
              ],
            ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [
                            Text(
                              widget.restaurant.name,
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      Text(
                     widget.restaurant.address,
                     style: TextStyle(fontSize: 18.0),
                   ),
                ],
              ),
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  color:  Colour.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                      'Reviews',
                       style: TextStyle(
                       color: Colors.white,
                       fontSize: 20.0,
                    ),
                  ),
                  //The reviews function will be put here
                  onPressed: () {},
                ),
                FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  color: Colour.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  //Contact the restaurant function here
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Center(   
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),       
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(10.0),
                crossAxisCount: 2,
                children: List.generate(widget.restaurant.menu.length, (index) {
                  Food food = widget.restaurant.menu[index];
                  return _buildMenuItem(food,widget.restaurant.name);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
void showDialogerr(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Error"),
          content: new Text("You cant return after creating your order"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }