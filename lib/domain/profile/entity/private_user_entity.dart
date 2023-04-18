import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_user_entity.freezed.dart';

@freezed
class PrivateUserEntity with _$PrivateUserEntity {
  const factory PrivateUserEntity({
    required String email,
    required List<String> my,
    required List<String> bought,
    required List<String> favorite,
  }) = _PrivateUserEntity;
}
