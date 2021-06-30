import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/testmodels/order.dart';
import 'package:delivery_app/views/RestaurantViews/DishList.dart';
import 'package:flutter/material.dart';

class OrdersList extends StatefulWidget {
  @override
  _OrdersListState createState() => _OrdersListState();
}

class _OrdersListState extends State<OrdersList> {
  final List<Order> orders = Order.getOrders();

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
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            //TODO: bellow goes the function that takes to order detaails (dishes)
            //just to try i call dishes List !!
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DishList(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colour.purple),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Order Number : " + index.toString(),
                          style: TextStyle(
                            color: Colour.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "dishes Amount : " + orders.length.toString(),
                          style: TextStyle(
                            color: Colour.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text("Date : " + orders[index].date),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("description : "),
                            //TODO: goes the description data
                            Text(" here goes description"),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text("Adress : "),
                            //TODO: goes the adress data
                            Text("372  Brown Street (example)")
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
