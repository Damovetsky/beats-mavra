import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_user_entity.freezed.dart';

@freezed
class PrivateUserEntity with _$PrivateUserEntity {
  const factory PrivateUserEntity({
    required String id,
    required String email,
    required double balance,
    required List<String> favorites,
    required List<String> bought,
    required List<String> created,
  }) = _PrivateUserEntity;
}
