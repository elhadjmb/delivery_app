import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/testdata/data.dart';
import 'package:delivery_app/testmodels/order.dart';
import 'package:delivery_app/views/ClientViews/Widgets/StatusScreen.dart';
import 'package:delivery_app/views/widgets/View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ShoppingCartPage extends StatefulWidget {
  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  
  _buildCartItem(Order order) {
    return Container(
      padding: EdgeInsets.all(15.0),
      height: 160.0,
      child: Row(//containes all the elements
        children: <Widget>[
          Expanded(
            child: Row(//containes the image 
            children: <Widget>[
              Container(
                    width: 150.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(order.food.imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
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
                                order.food.name,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                order.restaurant.name,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10.0),
                       Container(
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              width: 0.8,
                              color: Colors.black54,
                            ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:<Widget> [
                                GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                    '-',
                                    style: TextStyle(
                                      color: Colour.orange,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              SizedBox(width: 20.0),
                              Text(
                                order.quantity.toString(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 20.0),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colour.orange,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                              ),
                              
                             ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
            ],
            ),
          ),
          
         /* Container(
         //  alignment: Alignment.bottomRight,
          //  margin:  EdgeInsets.all(5.0),
            child:  
          ),*/
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '${order.quantity * order.food.price}DA',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment:  Alignment.topRight,
            child:
              IconButton(
              icon: Icon(Icons.cancel),
              iconSize: 30.0,
              color: Colors.orange,
              //removing the object from the order method
              onPressed: () {},
            )
          ),
       ],
      ),
     );
    }

  @override
  Widget build(BuildContext context) {
    //the price calculator method
    double totalPrice = 0;
    currentUser.cart.forEach(
      (Order order) => totalPrice += order.quantity * order.food.price,
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colour.white,
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder:(context) =>View(),
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
        body: ListView.separated(
        itemCount: currentUser.cart.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index < currentUser.cart.length) {
            Order order = currentUser.cart[index];
            return _buildCartItem(order);
          }
          return Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Estimated Delivery Time:',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '25 min',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total Cost:',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '${totalPrice.toStringAsFixed(2)}DA',
                      style: TextStyle(
                        color: Colors.green[700],
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80.0),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 1.0,
            color: Colors.grey,
          );
        },
      ),
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
                  Icons.payment,
                  color: Colour.white,
                  ),
                SizedBox(width: 15),
                Text(
                  'CHECKOUT',
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
                builder: (_) => StatusWidg())
                );
            },
          ),
        ),
      ),
      )
    );
  }
}
