//TODO: delivery class contains all information about the delivery
// including the deliverer and addresses
import 'package:delivery_app/models/Order.dart';

class Delivery {
  //TODO: add more attributes to delivery objects
  int id;
  List<Order> orders;

  Delivery({
    required this.id,
    required this.orders,
  });
}
