import 'package:json_annotation/json_annotation.dart';

part 'JsonParsing/UserSignInData.g.dart';

@JsonSerializable()
class UserSignInData {
  String id;
  String phone;
  String? email; //optional

  UserSignInData({
    required this.id,
    required this.phone,
    this.email,
  });

  factory UserSignInData.fromJson(Map<String, dynamic> json) =>
      _$UserSignInDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserSignInDataToJson(this);
}
