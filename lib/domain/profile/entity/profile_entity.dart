import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/user_entity.dart';

part 'profile_entity.freezed.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required UserEntity user,
    required String email,
  }) = _ProfileEntity;
}
