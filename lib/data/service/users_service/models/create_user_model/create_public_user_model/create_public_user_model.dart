import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_public_user_model.g.dart';

@JsonSerializable()
class CreatePublicUserModel {
  final String id;
  final String? avatarUrl;
  final String description;

  CreatePublicUserModel(
    this.id,
    this.avatarUrl,
    this.description,
  );

  factory CreatePublicUserModel.fromJson(Map<String, dynamic> json) => _$CreatePublicUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreatePublicUserModelToJson(this);
}
