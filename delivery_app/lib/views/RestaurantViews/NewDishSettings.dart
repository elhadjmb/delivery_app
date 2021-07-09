import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/testdata/data.dart';
import 'package:delivery_app/testmodels/food.dart';
import 'package:delivery_app/testmodels/ingredient.dart';
import 'package:flutter/material.dart';

class NewDish extends StatefulWidget {
  @override
  _NewDishState createState() => _NewDishState();
}

class _NewDishState extends State<NewDish> {
  String dropdownValue = "1";
  int ingredientAmount = 1;
  TextEditingController dishName = TextEditingController();
  TextEditingController dishPrice = TextEditingController();
  List<TextEditingController> _ingredients = [TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController(), TextEditingController()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: InkWell(
        //TODO: bellow goes the function that add a new dish
        onTap: () {
          Food food = Food(imageUrl: "assets/testimages/pizza.jpg", name: dishName.text, price: double.parse(dishPrice.text), ingredient: getAllIngs(_ingredients), );
          restaurants[0].menu.add(food);
          setState(() {});
          Navigator.pop(context);
          setState(() {});
        },
        child: Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
            color: Colour.purple,
            borderRadius: BorderRadius.circular(18.0),
            border: Border.all(
              color: Colour.white,
              width: 3,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Add a new dish ",
                style: TextStyle(
                  color: Colour.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                Icons.add,
                color: Colour.white,
              ),
            ],
          ),
        ),
      ),
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
      body: Padding(
        padding: const EdgeInsets.all(12.4),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: dishName,
                decoration: InputDecoration(
                  fillColor: Colour.purple,
                  icon: Icon(
                    Icons.fastfood,
                    color: Colour.purple,
                  ),
                  hintText: "Dish name",
                  hintStyle: TextStyle(
                    color: Colour.purple,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: dishPrice,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.attach_money,
                    color: Colour.purple,
                  ),
                  hintText: "Dish price",
                  hintStyle: TextStyle(
                    color: Colour.purple,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colour.white,
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(
                      color: Colour.purple,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Add a dish photo ",
                        style: TextStyle(
                          color: Colour.purple,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.add_a_photo,
                        color: Colour.purple,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.list,
                    color: Colour.purple,
                  ),
                  Text(
                    "  Ingredients amount  : ",
                    style: TextStyle(
                      color: Colour.purple,
                      fontSize: 17,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colour.purple,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colour.purple),
                      underline: Container(
                        height: 3,
                        color: Colour.purple,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                          ingredientAmount = int.parse(newValue);
                        });
                      },
                      items: <String>['1', '2', '3', '4', '5', '6', '7']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: ingredientAmount,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: _ingredients[index],
                    decoration: InputDecoration(
                      fillColor: Colour.purple,
                      icon: Icon(
                        Icons.edit_attributes,
                        color: Colour.purple,
                      ),
                      hintText: "ingredient number " + (index + 1).toString(),
                      hintStyle: TextStyle(
                        color: Colour.purple,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<Ingredient> getAllIngs(List<TextEditingController> ingredients) {
    List<Ingredient> res = [];
    for (int i=0; i<ingredients.length; i++) {
      if (ingredients[i].text != "") res.add(Ingredient(name: ingredients[i].text, isCheck: true));
    }
    return res;
  }
}
