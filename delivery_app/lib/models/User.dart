import 'package:delivery_app/constants/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'JsonParsing/User.g.dart';

@JsonSerializable(explicitToJson: true)
class TUser {
  String id;
  bool isActive;
  String name;
  String address;
 // DateTime? timeJoined;
  UserType? type;
  String phone;
  String? email;

  TUser({
    required this.id,
    required this.isActive,
    required this.name,
    required this.address,
    // this.timeJoined,
    this.type,
    required this.phone,
    this.email,
  });

  factory TUser.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
