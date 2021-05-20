import 'package:delivery_app/views/ClientViews/HomePage.dart';
import 'package:delivery_app/views/SignupView.dart';
import 'package:flutter/material.dart';

class View extends StatefulWidget {
  @override
  _View createState() => _View();
}

class _View extends State<View> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    SignupScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
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
              icon: Icon(Icons.person),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
