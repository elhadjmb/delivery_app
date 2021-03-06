import 'dart:math';

import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/controllers/ClientViewController.dart';
import 'package:delivery_app/testmodels/food.dart';
import 'package:delivery_app/testmodels/ingredient.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:delivery_app/views/ClientViews/ShoppingCartPage.dart';
import 'package:flutter/material.dart';

class DishIng extends StatefulWidget {
  final Food food;
  String ide;
  String restname;
  DishIng({required this.ide,required this.food,required this.restname});
  @override
  _DishIngState createState() => _DishIngState();
}

class _DishIngState extends State<DishIng> {
   final myController = TextEditingController();
 _buildingredientList(BuildContext context, Ingredient ingredient , int index){
   return Card(
     child: Container(
       padding: new EdgeInsets.all(10.0),
       child: Column(
         children:<Widget> [
           new CheckboxListTile(
             activeColor: Colour.red,
             dense: true,
             title: new Text(
              ingredient.name,
              style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5
              ),
             ),
             value: checkBoxListTileModel[index].isCheck,
             onChanged: (bool? val) {
              itemChange(val!, index);
              }
           )
        ],
      )
     ),
   );

}
List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();
      CartController cart=CartController();
      
  @override
  Widget build(BuildContext context) {
      Random random1 = new Random();
int randomNumber2 = random1.nextInt(100);
 String ids='dish'+randomNumber2.toString();
    return Scaffold(
      body: Column(
        children:<Widget> [
          Stack(
            children: <Widget>[
                 Container(
                    child: Image(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    image: AssetImage(widget.food.imageUrl),
                    fit: BoxFit.cover,
                ),
                 ),
                 Container(
            height: 200.0,
            decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(15.0),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        iconSize: 30.0,
                        onPressed: () => Navigator.pop(context),
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
                            widget.food.name,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          IconButton(
                        icon: Icon(Icons.favorite),
                        color:  Colour.orange,
                        iconSize: 30.0,
                        //the favorites function will be put here
                        onPressed: () {},
                      ),
                        ],
                      ),
                      
                    Row(
                      children: [ 
                        Text(
                            //replace this with the restaurant name
                            "Saint jjonas restaurant ",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                     ]
                    ),
                    SizedBox(height: 20.0),
                    Center(
                      child:
                      Text(
                   '${widget.food.price.toString()} DA',
                   style: TextStyle(fontSize: 22.0,
                   fontWeight: FontWeight.w800,),
                       ),
                    ),
                    SizedBox(height: 20.0),
                    Center(
                 child:   
                 TextFormField(
                   controller: myController,
                   cursorColor: Colour.orange,
                     decoration: InputDecoration(
                       labelStyle: TextStyle(color: Colour.orange,),
                     border: UnderlineInputBorder(),
                     labelText: 'Enter the quantity',
                     fillColor: Colour.orange,
                     focusColor: Colour.orange,
                     hoverColor: Colour.orange,
                      ),
                     )
                    ),
              ],
            ),
          ),     
          Padding(
             padding: EdgeInsets.all(20.0),
             child: Column(
              children: [
                Row(   
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children :<Widget> [
                     Text(
                    'Select Ingredients:',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ), 
                 ]      
                ),
              ],
            ),
          ),
         // SizedBox(height: 10.0),
          Container(
            height: 260,
            child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 2.0),
            scrollDirection: Axis.vertical,
            itemCount: widget.food.ingredient.length,
            itemBuilder: (context, index) {
              Ingredient ingredients = widget.food.ingredient[index];
              return  _buildingredientList(context, ingredients,index);
             // return _buildRestaurantList(context, restaurant[index]);
            },
          ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 56.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
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
          /*  style: TextButton.styleFrom(
              shape: StadiumBorder(),
            ),*/
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(        
                  Icons.shopping_cart,
                  color: Colour.white,
                  ),
                 SizedBox(width: 15),       
                Text(
                  'ADD TO CART',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            //adding a dish with its ingredients to the cart
            onPressed: () {
              cart.adddishtocart(ids, widget.food.name, widget.food.price,  widget.food.imageUrl,widget.ide,ids,myController.text,widget.restname);
              Navigator.push(
                context,MaterialPageRoute(
                builder: (_) =>ShoppingCartPage(ide: widget.ide,))
                );
            },
          ),
        ),
      ),
    );
  }
  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}
class CheckBoxListTileModel {
  int userId;
  String title;
  bool isCheck;

  CheckBoxListTileModel({required this.userId, required this.title, required this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          title: "Android",
          isCheck: true),
      CheckBoxListTileModel(
          userId: 2,
          title: "Flutter",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          title: "IOS",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          title: "PHP",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 5,
          title: "Node",
          isCheck: false),
           CheckBoxListTileModel(
          userId: 5,
          title: "Node",
          isCheck: false),
           CheckBoxListTileModel(
          userId: 5,
          title: "Node",
          isCheck: false),
           CheckBoxListTileModel(
          userId: 5,
          title: "Node",
          isCheck: false),
          
    ];
  }
}