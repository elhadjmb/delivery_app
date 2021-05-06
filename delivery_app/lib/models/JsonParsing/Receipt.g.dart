// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Receipt _$ReceiptFromJson(Map<String, dynamic> json) {
  return Receipt(
    id: json['id'] as String,
    delivery: Delivery.fromJson(json['delivery'] as Map<String, dynamic>),
    comment: json['comment'] as String,
    price: (json['price'] as num).toDouble(),
  );
}

Map<String, dynamic> _$ReceiptToJson(Receipt instance) => <String, dynamic>{
      'id': instance.id,
      'delivery': instance.delivery.toJson(),
      'comment': instance.comment,
      'price': instance.price,
    };
