import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/views/ClientViews/HomePage.dart';
import 'package:delivery_app/views/ClientViews/ShoppingCartPage.dart';
import 'package:delivery_app/views/RestaurantViews/OrdersList.dart';
import 'package:delivery_app/views/SettingsViews/ProfileView.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  @override
  _Footer createState() => _Footer();
}

class _Footer extends State<Footer> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    //TODO: here goes all restaurants views
    OrdersList(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_check_outlined),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined),
              label: "Menu",
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
