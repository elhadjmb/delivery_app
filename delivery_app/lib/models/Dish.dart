import 'package:delivery_app/constants/types.dart';

class Ingredient {
  //TODO: add more attributes to ingredient objects
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
}

class Dish {
  int id;
  String name;
  DishCategory category;
  double price;
  String description;
  List<Ingredient> ingredients;
  bool isActive = true;
  DateTime cookTime;
  List<String> tags;
  double score;
  String image;

  Dish({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.description,
    required this.ingredients,
    required this.isActive,
    required this.cookTime,
    required this.tags,
    required this.score,
    required this.image,
  });
}
