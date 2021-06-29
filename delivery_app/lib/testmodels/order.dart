import 'package:delivery_app/testmodels/food.dart';
import 'package:delivery_app/testmodels/restaurant.dart';

import 'ingredient.dart';

class Order {
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;

  Order({
    required this.date,
    required this.restaurant,
    required this.food,
    required this.quantity,
  });

  static List<Order> getOrders() {
    return [
      Order(
        restaurant: Restaurant(
          address: "",
          imageUrl: "",
          menu: [],
          name: "",
          rating: 0,
        ),
        food: Food(
          imageUrl:
              "https://www.recipetineats.com/wp-content/uploads/2020/05/Pizza-Crust-without-yeast_5-SQ.jpg",
          name: "pizza",
          price: 5.6,
          ingredient: <Ingredient>[
            Ingredient(
              name: "cheese",
              isCheck: true,
            ),
            Ingredient(
              name: "chicken",
              isCheck: true,
            ),
            Ingredient(
              name: "olive",
              isCheck: true,
            ),
          ],
        ),
        date: "12/10/2021",
        quantity: 1,
      ),
      //===================== next Order ======================\\
      Order(
        restaurant: Restaurant(
          address: "",
          imageUrl: "",
          menu: [],
          name: "",
          rating: 0,
        ),
        food: Food(
          imageUrl:
              "https://img.cuisineaz.com/610x610/2019-04-17/i146583-tacos-poulet-curry.jpeg",
          name: "tacos",
          price: 8.35,
          ingredient: <Ingredient>[
            Ingredient(
              name: "chicken",
              isCheck: true,
            ),
            Ingredient(
              name: "kabab",
              isCheck: true,
            ),
            Ingredient(
              name: "cheese",
              isCheck: true,
            ),
          ],
        ),
        date: "02/10/2021",
        quantity: 2,
      ),
      //===================== next Order ======================\\
      Order(
        restaurant: Restaurant(
          address: "",
          imageUrl: "",
          menu: [],
          name: "",
          rating: 0,
        ),
        food: Food(
          imageUrl: "https://i.ytimg.com/vi/_aa7bPeBcyg/hqdefault.jpg",
          name: "chawarma",
          price: 3.0,
          ingredient: <Ingredient>[
            Ingredient(
              name: "tomato",
              isCheck: true,
            ),
            Ingredient(
              name: "onion",
              isCheck: true,
            ),
            Ingredient(
              name: "Hot sauce",
              isCheck: true,
            ),
          ],
        ),
        date: "12/06/2021",
        quantity: 2,
      ),
      //===================== next Order ======================\\
      Order(
        restaurant: Restaurant(
          address: "",
          imageUrl: "",
          menu: [],
          name: "",
          rating: 0,
        ),
        food: Food(
          imageUrl:
              "https://static.750g.com/images/600-600/767b43866576c3de09a71abec8ca8948/des-nuggets-de-poulet-maison-bien-moins-gras.jpg",
          name: "chicken nugget",
          price: 3.0,
          ingredient: <Ingredient>[
            Ingredient(
              name: "cheese",
              isCheck: true,
            ),
          ],
        ),
        date: "12/10/2021",
        quantity: 1,
      ),
      //===================== next Order ======================\\
      Order(
        restaurant: Restaurant(
          address: "",
          imageUrl: "",
          menu: [],
          name: "",
          rating: 0,
        ),
        food: Food(
          imageUrl:
              "https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg",
          name: "cheese burger",
          price: 2.5,
          ingredient: <Ingredient>[
            Ingredient(
              name: "tomato",
              isCheck: true,
            ),
          ],
        ),
        date: "12/05/2021",
        quantity: 1,
      ),
      //===================== next Order ======================\\
    ];
  }
}
