import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:flutter/material.dart';

import 'MainView.dart';

class Stats extends StatefulWidget {
  const Stats({ Key? key }) : super(key: key);

  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder:(context) =>DelivView(),
            ),
          );
        },
       ),
          title: Text(
            "Statistics",
            style: TextStyle(
              fontFamily: StringInner.fonts["main"],
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
              color: Colour.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colour.blue,
        ),
        body: Center(
            child: OutlinedButton(
              style: TextButton.styleFrom(
              minimumSize: Size(200, 50),
               backgroundColor: Colour.blue ,
               shape: StadiumBorder(),
              ),
              onPressed: () {  },
              child:       
                  Text(
                    'No orders have been delivered yet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
            ),
        ),
    );
  }
}