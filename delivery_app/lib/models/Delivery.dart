//TODO: delivery class contains all information about the delivery
// including the deliverer and addresses
import 'package:delivery_app/models/Order.dart';
import 'package:json_annotation/json_annotation.dart';

part 'JsonParsing/Delivery.g.dart';

@JsonSerializable(explicitToJson: true)
class Delivery {
  String id;
  List<Order> orders;

  Delivery({
    required this.id,
    required this.orders,
  });

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryToJson(this);
}
