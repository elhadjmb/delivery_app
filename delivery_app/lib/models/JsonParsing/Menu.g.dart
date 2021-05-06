// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return Menu(
    id: json['id'] as String,
    name: json['name'] as String,
    dishes: (json['dishes'] as List<dynamic>)
        .map((e) => Dish.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dishes': instance.dishes,
    };
