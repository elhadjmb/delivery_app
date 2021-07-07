import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/models/Order.dart';
import 'package:delivery_app/services/Database.dart';
import 'package:delivery_app/views/AuthentificationViews/LoginView.dart';
import 'package:delivery_app/views/ServerViews/OrderList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ServHome extends StatefulWidget {
  @override
  _ServHomeState createState() => _ServHomeState();
}

class _ServHomeState extends State<ServHome> {
  List<bool> _selections = List.generate(2, (_) => false);
  @override
  Widget build(BuildContext context) { 
    
    return StreamProvider<List<Order>>(
     
        initialData: [],
       child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
            icon: Icon(Icons.logout),
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder:(context) =>LoginScreen(),
              ),
            );
            },
          ),
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
           actions: [IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder:(context) =>LoginScreen(),
              ),
            );
            },
          ),],
            centerTitle: true,
            backgroundColor: Colour.blue,
          ),
          body:Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:30.0),
                            child: Align(
                   alignment: Alignment(-0.85, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[                        
                    Text(
                      'Task list',
                      style: TextStyle(
                      color: Colour.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                   ),                      
                  ],
                ),
            ),
              ),
            Padding(
                padding: new EdgeInsets.all(15.0),
              child:
                ToggleButtons(
                children: [ 
                  Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Text("Available"),
                  ),
                  Padding(
                   padding: const EdgeInsets.all(12.0),
                  child: Text("Not Available"),
                  ),
                ],
                  isSelected: _selections,
                   onPressed: (int index) {
                         setState(() {
                        for (var i = 0; i < 2; i++) {
                       _selections[i] = false;
                      }
                    _selections[index] = !_selections[index];
                   });
                  },
                    textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                ),
                color: Colour.black,
                borderRadius: BorderRadius.circular(30.0),
                selectedColor: Colour.gray,
                borderColor: Colour.blue,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:10.0),
                       child: Align(
                   alignment: Alignment(-0.75, 0),
                      child: Row(    
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[                        
                    Text(
                      'Near you',
                      style: TextStyle(
                      color: Colour.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                   ), 
                   Container(
                      margin:EdgeInsets.fromLTRB(0, 0, 0, 0) ,
                      child: Text(
                        '.',
                        style: TextStyle(
                        color: Colour.black,
                        fontSize:25.0,
                        fontWeight: FontWeight.w500,
                      ),
                     ),
                    ),   
                    Container(
                      margin:EdgeInsets.fromLTRB(0, 5, 0, 0) ,
                      child: Text(
                        'delivery 100DA (15-20 min)',
                        style: TextStyle(
                        color: Colour.black,
                        fontSize:15.0,
                        fontWeight: FontWeight.w300,
                      ),
                     ),
                    ),                    
                  ],
                ),
               ),
              ),
               SizedBox(height: 20.0),
            Expanded(
              child: Orderlist(ide: '',),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
