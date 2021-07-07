// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return Ingredient(
    id: json['id'] as int,
    name: json['name'] as String,
    quantity: json['quantity'] as int,
    isRequired: json['isRequired'] as bool,
  );
}

Map<String, dynamic> _$IngredientToJson(Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quantity': instance.quantity,
      'isRequired': instance.isRequired,
    };

Dish _$DishFromJson(Map<String, dynamic> json) {
  return Dish(
    id: json['id'] as String,
    name: json['name'] as String,
   // category: _$enumDecode(_$DishCategoryEnumMap, json['category']),
    price: json['price'] as double,
    restaurantname:json['restaurantname'] as String ,
  //  description: json['description'] as String,
  //  ingredients: (json['ingredients'] as List<dynamic>)
      //  .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
     //   .toList(),
  //  isActive: json['isActive'] as bool,
  //  cookTime: DateTime.parse(json['cookTime'] as String),
   // tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
   // score: (json['score'] as num).toDouble(),
    image: json['image'] as String,
     quantity: json['quantity'] as String,
  );
}

Map<String, dynamic> _$DishToJson(Dish instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
     // 'category': _$DishCategoryEnumMap[instance.category],
      'price': instance.price,
      'restaurantname':instance.restaurantname,
    //  'description': instance.description,
    //  'ingredients': instance.ingredients.map((e) => e.toJson()).toList(),
     // 'isActive': instance.isActive,
     // 'cookTime': instance.cookTime.toIso8601String(),
    //  'tags': instance.tags,
    //  'score': instance.score,
      'image': instance.image,
      'quantity': instance.quantity,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$DishCategoryEnumMap = {
  DishCategory.STARTER: 'STARTER',
  DishCategory.DRINK: 'DRINK',
};
