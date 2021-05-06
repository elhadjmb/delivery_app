// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../UserSignInData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignInData _$UserSignInDataFromJson(Map<String, dynamic> json) {
  return UserSignInData(
    id: json['id'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String?,
  );
}

Map<String, dynamic> _$UserSignInDataToJson(UserSignInData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'email': instance.email,
    };
