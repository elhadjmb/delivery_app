// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TUser _$UserFromJson(Map<String, dynamic> json) {
  return TUser(
    id: json['id'] as String,
    isActive: json['isActive'] as bool,
    name: json['name'] as String,
    address: json['address'] as String,
   // timeJoined: DateTime.parse(json['timeJoined'] as String),
    type: _$enumDecode(_$UserTypeEnumMap, json['type']),
    phone: json['phone'] as String,
    email: json['email'] as String?,
  );
}

Map<String, dynamic> _$UserToJson(TUser instance) => <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'name': instance.name,
      'address': instance.address,
      'email':instance.email,
      'phone':instance.phone,
     // 'timeJoined': instance.timeJoined!.toIso8601String(),
      'type': _$UserTypeEnumMap[instance.type],
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

const _$UserTypeEnumMap = {
  UserType.SADMIN: 'SADMIN',
  UserType.CLIENT: 'CLIENT',
  UserType.SERVER: 'SERVER',
  UserType.DELIVERER: 'DELIVERER',
  UserType.GUEST: 'GUEST',
};
