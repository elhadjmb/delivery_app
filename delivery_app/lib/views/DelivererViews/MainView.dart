import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/views/ClientViews/MapPage.dart';
import 'package:delivery_app/views/ClientViews/ShoppingCartPage.dart';
import 'package:delivery_app/views/ClientViews/Widgets/DeliveryMap.dart';
import 'package:delivery_app/views/ServerViews/HomePageServer.dart';
import 'package:flutter/material.dart';

import 'StatsView.dart';

class DelivView extends StatefulWidget {
  const DelivView({ Key? key }) : super(key: key);

  @override
  _DelivViewState createState() => _DelivViewState();
}

class _DelivViewState extends State<DelivView> {
   int _currentIndex = 0;
  final List<Widget> _pages = [
    ServHome(),
    Stats() ,//icon name is chart
   // Pagemap(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
           type: BottomNavigationBarType.fixed,
          selectedItemColor: Colour.blue,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart),
              label: "Stats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}