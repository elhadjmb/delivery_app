//TODO: add receipt class, it must contain a list of orders
import 'package:delivery_app/models/Delivery.dart';
import 'package:json_annotation/json_annotation.dart';

part 'JsonParsing/Receipt.g.dart';

@JsonSerializable(explicitToJson: true)
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

  factory Receipt.fromJson(Map<String, dynamic> json) =>
      _$ReceiptFromJson(json);

  Map<String, dynamic> toJson() => _$ReceiptToJson(this);
}
