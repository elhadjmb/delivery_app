import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/models/Dish.dart';
import 'package:delivery_app/models/User.dart';
import 'package:json_annotation/json_annotation.dart';

part 'JsonParsing/Order.g.dart';

@JsonSerializable(explicitToJson: true)
class Order {
  //TODO: add more attributes to order objects
  String id;
  DateTime orderTime;
  String description;
  OrderStatus status;
  TUser client;
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

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
