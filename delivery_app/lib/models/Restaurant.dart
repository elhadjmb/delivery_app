//TODO: add restaurant class, it must contain a list of employees (servers)

import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/models/Menu.dart';
import 'package:delivery_app/models/User.dart';

class Restaurant {
  int id;
  String name;
  String address;
  Menu menu;
  DateTime openedHours, closedHours;
  bool isOpen;
  Map<Position, User> employees;

  Restaurant({
    required this.id,
    required this.menu,
    required this.name,
    required this.address,
    required this.closedHours,
    required this.isOpen,
    required this.openedHours,
    required this.employees,
  });
}
