import 'dart:math';

import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/controllers/ClientViewController.dart';
import 'package:delivery_app/testmodels/restaurant.dart';
import 'package:delivery_app/views/ClientViews/Widgets/RestaurantScreen.dart';
import 'package:delivery_app/views/widgets/View.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  
  final Restaurant restaurant;
   String idclient;
  Cartpage({required this.restaurant, required this.idclient});
  @override
  _CartpageState createState() => _CartpageState();
}
 
class _CartpageState extends State<Cartpage> {
CartController cart=CartController();

  @override
 
  Widget build(BuildContext context) {
    Random random = new Random();
   int randomNumber = random.nextInt(100);
    String id='OrderN'+randomNumber.toString();
    return Scaffold(
       appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder:(context) =>View(ide: widget.idclient),
            ),
          );
        },
       ),
          title: Text(
            "Cart",
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
        body: Center(
            child: OutlinedButton(
              style: TextButton.styleFrom(
               minimumSize: Size(200, 50),
               backgroundColor: Colour.orange ,
               shape: StadiumBorder(),
              ),
              onPressed: () async {
            dynamic result=await cart.addorder(id,widget.idclient,widget.restaurant.name);
            print(result);
            Navigator.push(
            context,
            MaterialPageRoute(builder:(context) =>RestaurantScreen(restaurant: widget.restaurant, ide:result ),
            ),
          );
        },
              child:       
                  Text(
                    'Create your order',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
            ),
        ),
    );
  }
}