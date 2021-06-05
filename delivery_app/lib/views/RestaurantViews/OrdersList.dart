import 'package:delivery_app/testmodels/ingredient.dart';
import 'package:delivery_app/testmodels/order.dart';
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
          "OrdersList",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink.shade300,
      ),
      backgroundColor: Colors.orange.shade100,
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: <Widget>[
              Positioned(child: orderCard(orders[index], context)),
              Positioned(
                top: 10.0,
                child: orderImage(orders[index].food.imageUrl),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget orderCard(Order order, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 60.0),
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: Card(
        color: Colors.brown.shade500,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 54,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        order.food.name,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "quantity :${order.quantity}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        "ingredients:" + getIngredients(order.food.ingredient),
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        getTotalPrice(order).toString() + " €",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget orderImage(String ImageUrl) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: NetworkImage(ImageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  double getTotalPrice(Order order) {
    return order.quantity * order.food.price;
  }

  String getIngredients(List<Ingredient> ingredients) {
    String ing = "";
    for (int i = 0; i < ingredients.length; i++) {
      if (ingredients[i].isCheck) {
        ing = ing + ingredients[i].name + ", ";
      }
    }
    return ing;
  }
}
