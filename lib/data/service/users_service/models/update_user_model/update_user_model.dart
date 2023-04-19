import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_model.freezed.dart';
part 'update_user_model.g.dart';

@freezed
class UpdateUserModel with _$UpdateUserModel {
  const factory UpdateUserModel({
    required String id,
    required String avatarUrl,
    required String nickname,
    required String description,
  }) = _UpdateUserModel;

  factory UpdateUserModel.fromJson(Map<String, dynamic> json) => _$UpdateUserModelFromJson(json);
}