import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            StringOuter.title["mainTitle"] as String,
            style: TextStyle(
              fontFamily: StringInner.fonts["main"],
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
              color: Colour.black,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colour.orange,
        ),
        body: ListView(
          children: <Widget>[],
        ),
      ),
    );
  }
}
