//TODO: add menu class, it must contain a list of dishes

import 'package:delivery_app/models/Dish.dart';

class Menu {
  int id;
  String name;
  List<Dish> dishes;

  Menu({
    required this.id,
    required this.name,
    required this.dishes,
  });
}
