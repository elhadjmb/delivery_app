import 'package:delivery_app/constants/types.dart';
import 'package:delivery_app/models/Menu.dart';
import 'package:delivery_app/models/User.dart';
import 'package:json_annotation/json_annotation.dart';

part 'JsonParsing/Restaurant.g.dart';

@JsonSerializable(explicitToJson: true)
class Restaurant {
  String id;
  String name;
  String address;
  Menu menu;
  DateTime openedHours, closedHours;
  bool isOpen;
  Map<Position, TUser> employees; //employees are users of type SERVER

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

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantToJson(this);
}
