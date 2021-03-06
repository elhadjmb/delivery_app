import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/views/ClientViews/CartPage.dart';
import 'package:delivery_app/views/ClientViews/HomePage.dart';
import 'package:delivery_app/views/ClientViews/MapPage.dart';
import 'package:delivery_app/views/ClientViews/ShoppingCartPage.dart';
import 'package:delivery_app/views/SettingsViews/ProfileView.dart';
import 'package:flutter/material.dart';

class View extends StatefulWidget {
  String ide;
  View({required this.ide});
  @override
  _View createState() => _View();
}

class _View extends State<View> {
  int _currentIndex = 0;
 

  @override
  Widget build(BuildContext context) {
     final List<Widget> _pages = [
    HomePage(idclient:widget.ide),
    ShoppingCartPage(idclient:widget.ide),
    Pagemap(ide:widget.ide ,),
    ProfilePage(),
  ];
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
           type: BottomNavigationBarType.fixed,
          selectedItemColor: Colour.orange,
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
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: "Map",
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
