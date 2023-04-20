import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_private_user_model.g.dart';

@JsonSerializable()
class CreatePrivateUserModel {
  final String id;
  final String email;

  @JsonKey(defaultValue: 0)
  double balance = 0;

  @JsonKey(defaultValue: {})
  Map<String, bool> favorite = {};

  @JsonKey(defaultValue: {})
  Map<String, bool> bought = {};

  @JsonKey(defaultValue: {})
  Map<String, bool> created = {};

  CreatePrivateUserModel(this.id, this.email);

  factory CreatePrivateUserModel.fromJson(Map<String, dynamic> json) => _$CreatePrivateUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreatePrivateUserModelToJson(this);
}
