
import 'package:delivery_app/testmodels/ingredient.dart';

class Food {
  final String imageUrl;
  final String name;
  final double price;
  final List<Ingredient> ingredient;

  Food({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.ingredient,
  });
}
