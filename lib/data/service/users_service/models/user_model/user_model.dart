import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';



@freezed
class UserModel with _$UserModel{
  const factory UserModel({
    required String userId,
    required String nickname,
    required String avatar,
    required String description,
    required List<String> favorites,
    required double balance,
}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
