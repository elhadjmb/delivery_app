// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return Restaurant(
    id: json['id'] as int,
    menu: Menu.fromJson(json['menu'] as Map<String, dynamic>),
    name: json['name'] as String,
    address: json['address'] as String,
    closedHours: DateTime.parse(json['closedHours'] as String),
    isOpen: json['isOpen'] as bool,
    openedHours: DateTime.parse(json['openedHours'] as String),
    employees: (json['employees'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$PositionEnumMap, k),
          User.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'menu': instance.menu.toJson(),
      'openedHours': instance.openedHours.toIso8601String(),
      'closedHours': instance.closedHours.toIso8601String(),
      'isOpen': instance.isOpen,
      'employees': instance.employees
          .map((k, e) => MapEntry(_$PositionEnumMap[k], e.toJson())),
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

const _$PositionEnumMap = {
  Position.OWNER: 'OWNER',
  Position.WORKER: 'WORKER',
};
