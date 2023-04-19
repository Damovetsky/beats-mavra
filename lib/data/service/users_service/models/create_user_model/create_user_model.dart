import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_model.g.dart';

@JsonSerializable()
class CreateUserModel {
  final String id;
  final String email;
  final String? avatarUrl;
  final String? description;

  @JsonKey(defaultValue: 0)
  double balance = 0;

  @JsonKey(defaultValue: {})
  Map<String, bool> favorites = {};

  @JsonKey(defaultValue: {})
  Map<String, bool> bought = {};

  @JsonKey(defaultValue: {})
  Map<String, bool> created = {};

  CreateUserModel(
    this.id,
    this.email,
    this.avatarUrl,
    this.description,
  );

  factory CreateUserModel.fromJson(Map<String, dynamic> json) => _$CreateUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreateUserModelToJson(this);
}
