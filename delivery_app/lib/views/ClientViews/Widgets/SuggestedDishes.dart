//import 'dart:js';

import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/testdata/data.dart';
import 'package:delivery_app/testmodels/order.dart';
import 'package:delivery_app/views/ClientViews/Widgets/DishScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestedDishes extends StatelessWidget {
  _buildSuggestedOrder(BuildContext context, Order order /*Dish dish*/) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 320.0,
      decoration: BoxDecoration(
        color: Colour.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1.0,
          color: Colour.gray,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    height: 100.0,
                    width: 100.0,
                    image: AssetImage(order.food.imageUrl/*dish.image*/),
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                         order.food.name,// dish.name,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4.0),
                        Text(
                         order.restaurant.name, //dish.description,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4.0),
                        Text(
                         order.date,// dish.price.toString(),
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        //quick note: we can add the rating text downhere
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            width: 48.0,
            decoration: BoxDecoration(
              color: Colour.orange,
              borderRadius: BorderRadius.circular(30.0),
            ),
            //the button
            child: IconButton(
              icon: Icon(Icons.add),
              iconSize: 30.0,
              color: Colors.white,
              //here we tap in the function that takes us into the ordering process of the selected dish
              onPressed: () {
                
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //final dish = Provider.of<List<Dish>>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Suggested dishes',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
              color: Colour.black,
            ),
          ),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount:currentUser.orders.length, //dish.length,
            itemBuilder: (context, index) {
              Order order = currentUser.orders[index];
              return _buildSuggestedOrder(context, order);
             // return _buildSuggestedOrder(context, dish[index]);
            },
          ),
        ),
      ],
    );
  }
}
