import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/models/Dish.dart';
import 'package:delivery_app/services/Database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dishlist extends StatefulWidget {
  //const Dishlist({ Key? key }) : super(key: key);
  String ide;
  Dishlist({required this.ide});
  @override
  _DishlistState createState() => _DishlistState();
}

class _DishlistState extends State<Dishlist> {
  @override
  Widget build(BuildContext context) {
       final dish = Provider.of<List<Dish>>(context);
       //print(dish.toList());
          return ListView.separated(
          itemCount:dish.length, //currentUser.cart.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index < dish.length) {
              //Order order = currentUser.cart[index];
              return _buildCartItem(dish[index],widget.ide);
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
                        '255Da',
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
        );
  }
}
  _buildCartItem(Dish dish, String id) {
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
                        image: AssetImage(dish.image),//
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
                                dish.name.toString(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                dish.name.toString(),
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
                               dish.quantity, //order.quantity.toString(),
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
              dish.price.toString(),//'${order.quantity * order.food.price}DA',
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
              onPressed: () async {
                await DatabaseWork(id: dish.id).deletedish(id,dish.id);
              },
            )
          ),
       ],
      ),
     );
    }