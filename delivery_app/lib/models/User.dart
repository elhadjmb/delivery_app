import 'package:delivery_app/constants/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'JsonParsing/User.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  String id;
  bool isActive;
  String name;
  String address;
  DateTime timeJoined;
  UserType type;
  String phone;
  String? email;

  User({
    required this.id,
    required this.isActive,
    required this.name,
    required this.address,
    required this.timeJoined,
    required this.type,
    required this.phone,
    this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
