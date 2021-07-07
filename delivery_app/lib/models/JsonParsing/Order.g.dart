// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    id: json['id'] as String,
   orderTime: DateTime.parse(json['orderTime'] as String),
   restaurantname:json['restaurantname'] as String,
    description: json['description'] as String,
 //   status: _$enumDecode(_$OrderStatusEnumMap, json['status']),
//    client: TUser.fromJson(json['client'] as Map<String, dynamic>),
    deliveryAddress: json['deliveryAddress'] as String,
    dishes: (json['dishes'] as List<dynamic>)
       .map((e) => Dish.fromJson(e as Map<String, dynamic>))
       .toList(),
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
     'orderTime': instance.orderTime.toIso8601String(),
     'restaurantname':instance.restaurantname,
      'description': instance.description,
   //   'status': _$OrderStatusEnumMap[instance.status],
  //    'client': instance.client.toJson(),
      'deliveryAddress': instance.deliveryAddress,
    'dishes': instance.dishes!.map((e) => e.toJson()).toList(),
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

const _$OrderStatusEnumMap = {
  OrderStatus.PENDING: 'PENDING',
  OrderStatus.PREPARING: 'PREPARING',
  OrderStatus.DELIVERING: 'DELIVERING',
  OrderStatus.COMPLETE: 'COMPLETE',
};
