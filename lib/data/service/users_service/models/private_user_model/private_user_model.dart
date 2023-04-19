import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_user_model.freezed.dart';
part 'private_user_model.g.dart';

@freezed
class PrivateUserModel with _$PrivateUserModel {
  const factory PrivateUserModel({
    required String id,
    required String email,
    required double balance,
    required Map<String, bool> favorites,
    required Map<String, bool> bought,
    required Map<String, bool> created,
  }) = _PrivateUserModel;

  factory PrivateUserModel.fromJson(Map<String, dynamic> json) => _$PrivateUserModelFromJson(json);
}
