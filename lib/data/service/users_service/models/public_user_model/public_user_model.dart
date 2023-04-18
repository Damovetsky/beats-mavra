import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user_model.freezed.dart';
part 'public_user_model.g.dart';

@freezed
class PublicUserModel with _$PublicUserModel {
  const factory PublicUserModel({
    required String id,
    required String avatarUrl,
    required String nickname,
    required String description,
  }) = _PublicUserModel;

  factory PublicUserModel.fromJson(Map<String, dynamic> json) => _$PublicUserModelFromJson(json);
}