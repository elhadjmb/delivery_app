//TODO: add receipt class, it must contain a list of orders
import 'package:delivery_app/models/Delivery.dart';

class Receipt {
  int id;
  Delivery delivery;
  String comment;
  double price;

  Receipt({
    required this.id,
    required this.delivery,
    required this.comment,
    required this.price,
  });
}
