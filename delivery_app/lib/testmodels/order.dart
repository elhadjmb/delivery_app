

import 'package:delivery_app/testmodels/food.dart';
import 'package:delivery_app/testmodels/restaurant.dart';

class Order {
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;

  Order({
    required this.date,
    required this.restaurant,
    required this.food,
    required this.quantity,
  });
}
