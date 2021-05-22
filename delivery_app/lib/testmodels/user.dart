import 'package:delivery_app/testmodels/order.dart';

class User {
  final String name;
  final List<Order> orders;
  final List<Order> cart;

  User({
    required this.name,
    required this.orders,
    required this.cart,
  });
}
