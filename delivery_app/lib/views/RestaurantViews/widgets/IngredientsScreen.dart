import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/testmodels/food.dart';
import 'package:delivery_app/testmodels/ingredient.dart';
import 'package:delivery_app/views/ClientViews/Widgets/DishScreen.dart';
import 'package:flutter/material.dart';

class IngredientsScreen extends StatefulWidget {
  final Food food;

  const IngredientsScreen({required this.food});
  @override
  _IngredientsScreenState createState() => _IngredientsScreenState();
}

class _IngredientsScreenState extends State<IngredientsScreen> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
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
                  children: <Widget>[
                    Text(
                      widget.food.name,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '${widget.food.price.toString()} DA',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 2.0),
              scrollDirection: Axis.vertical,
              itemCount: widget.food.ingredient.length,
              itemBuilder: (context, index) {
                Ingredient ingredients = widget.food.ingredient[index];
                return _buildingredientList(context, ingredients, index);
              },
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height / 8.8,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colour.purple,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.event_available,
                  color: Colour.white,
                ),
                SizedBox(width: 15),
                Text(
                  'Activate / desactivate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            //TODO: bellow goes the function tha t activate or desactivate dish
            onPressed: () {},
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

  _buildingredientList(BuildContext context, Ingredient ingredient, int index) {
    return Card(
      child: Container(
          padding: new EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              new CheckboxListTile(
                  activeColor: Colour.purple,
                  dense: true,
                  title: new Text(
                    ingredient.name,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                  ),
                  value: checkBoxListTileModel[index].isCheck,
                  onChanged: (bool? val) {
                    itemChange(val!, index);
                  })
            ],
          )),
    );
  }
}
