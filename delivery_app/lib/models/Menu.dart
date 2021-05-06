import 'package:delivery_app/models/Dish.dart';
import 'package:json_annotation/json_annotation.dart';

part 'JsonParsing/Menu.g.dart';

@JsonSerializable()
class Menu {
  String id;
  String name;
  List<Dish> dishes;

  Menu({
    required this.id,
    required this.name,
    required this.dishes,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);

  Map<String, dynamic> toJson() => _$MenuToJson(this);
}
