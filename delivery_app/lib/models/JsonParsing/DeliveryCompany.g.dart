// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../DeliveryCompany.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryCompany _$DeliveryCompanyFromJson(Map<String, dynamic> json) {
  return DeliveryCompany(
    id: json['id'] as String,
    employees: (json['employees'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$PositionEnumMap, k),
          TUser.fromJson(e as Map<String, dynamic>)),
    ),
    name: json['name'] as String,
    address: json['address'] as String,
    closedHours: DateTime.parse(json['closedHours'] as String),
    isOpen: json['isOpen'] as bool,
    openedHours: DateTime.parse(json['openedHours'] as String),
  );
}

Map<String, dynamic> _$DeliveryCompanyToJson(DeliveryCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'employees':
          instance.employees.map((k, e) => MapEntry(_$PositionEnumMap[k], e)),
      'openedHours': instance.openedHours.toIso8601String(),
      'closedHours': instance.closedHours.toIso8601String(),
      'isOpen': instance.isOpen,
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
