// @dart=2.9

import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/models/Dish.dart';
import 'package:delivery_app/services/Database.dart';
import 'package:delivery_app/testdata/data.dart';
import 'package:delivery_app/testmodels/order.dart';
import 'package:delivery_app/testmodels/restaurant.dart';
import 'package:delivery_app/views/ClientViews/Widgets/DeliveryMap.dart';
import 'package:delivery_app/views/ClientViews/Widgets/DishesList.dart';
import 'package:delivery_app/views/ClientViews/Widgets/RestaurantScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ShoppingCartPage extends StatefulWidget {
  Restaurant restaurant;
  String ide;
  String idclient;
  ShoppingCartPage({  this.restaurant, this.ide,this.idclient});

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {

  @override
  Widget build(BuildContext context) {
    //the price calculator method
    double totalPrice = 0;
    currentUser.cart.forEach(
      (Order order) => totalPrice += order.quantity * order.food.price,
    );
    
    return StreamProvider<List<Dish>>(
        create:(_) => DatabaseRetrieve(ids:widget.ide).dishes ,
        initialData: [],
        child: SafeArea(   
        child: Scaffold(
          backgroundColor: Colour.white,
          appBar: AppBar(
            leading: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder:(context) =>RestaurantScreen(restaurant: widget.restaurant, ide: widget.ide),
              ),
            );
          },
         ),
            title: Text(
              'Cart (${currentUser.cart.length})',
              style: TextStyle(
                fontFamily: StringInner.fonts["main"],
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colour.white,
                fontStyle: FontStyle.italic,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colour.orange,
          ),
          
          body: Dishlist( ide: widget.ide,),

          bottomSheet: Container(
          height: 56.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colour.orange,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, -1),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Center(
            child: TextButton(
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [              
                  Icon(        
                    Icons.map,
                    color: Colour.white,
                    ),
                  SizedBox(width: 15),
                  Text(
                    'LOCATION',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,MaterialPageRoute(
                  builder: (_) => FireMap(ide: widget.ide,))
                  );
              },
            ),
          ),
        ),
        )
      ),
    );
  }
}
