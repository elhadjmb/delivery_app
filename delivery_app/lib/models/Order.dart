import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/models/Dish.dart';
import 'package:delivery_app/models/User.dart';

class Order {
  //TODO: add more attributes to order objects
  int id;
  DateTime orderTime;
  String description;
  OrderStatus status;
  User client;
  String deliveryAddress;
  List<Dish> dishes;

  Order({
    required this.id,
    required this.orderTime,
    required this.description,
    required this.status,
    required this.client,
    required this.deliveryAddress,
    required this.dishes,
  });
}
