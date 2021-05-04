import 'package:delivery_app/constants/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'JsonParsing/User.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  //TODO: add more attributes to user objects
  bool isActive;
  String name;
  String address;
  String phone;
  String email;
  String password; //is hashed through MD6 with a key
  DateTime timeJoined;
  UserType type;

  User({
    required this.isActive,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    required this.password,
    required this.timeJoined,
    required this.type,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
