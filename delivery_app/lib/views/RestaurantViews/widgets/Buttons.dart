import 'package:delivery_app/constants/colours.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final GestureTapCallback? onTapp;
  final String label;
  final Icon icon;
  const MenuButton({required this.icon, required this.label, this.onTapp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(23.0),
      child: InkWell(
        onTap: onTapp,
        child: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: Colour.purple,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              icon,
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
