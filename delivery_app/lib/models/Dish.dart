import 'package:delivery_app/constants/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'JsonParsing/Dish.g.dart';

@JsonSerializable()
class Ingredient {
  int id;
  String name;
  int quantity;
  bool isRequired;

  Ingredient({
    required this.id,
    required this.name,
    required this.quantity,
    required this.isRequired,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dish {
  String id;
  String name;
  //DishCategory category;
  double price;
  String restaurantname;
 // String description;
  //List<Ingredient> ingredients;
 // bool isActive = true;
  //DateTime cookTime;
  //List<String> tags;
  //double score;
  String image;
  String quantity;

  Dish({
    required this.id,
    required this.name,
   // required this.category,
    required this.price,
    required this.restaurantname,
    //required this.description,
   // required this.ingredients,
    //required this.isActive,
  //  required this.cookTime,
  //  required this.tags,
  //  required this.score,
    required this.image,
    required this.quantity,
  });

  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);

  Map<String, dynamic> toJson() => _$DishToJson(this);
}
