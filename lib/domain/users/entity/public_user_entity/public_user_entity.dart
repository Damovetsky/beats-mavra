import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user_entity.freezed.dart';

@freezed
class PublicUserEntity with _$PublicUserEntity {
  const factory PublicUserEntity({
    required String id,
    required String? avatarUrl,
    required String nickname,
    required String? description,
  }) = _PublicUserEntity;
}
