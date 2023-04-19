import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../domain/users/entity/public_user_entity/public_user_entity.dart';
import '../../service/users_service/models/user_model/public_user_model/public_user_model.dart';

@injectable
class PublicUserModelToPublicUserEntityConverter extends Converter<PublicUserModel, PublicUserEntity> {
  @override
  PublicUserEntity convert(PublicUserModel input) => PublicUserEntity(
        id: input.id,
        avatarUrl: input.avatarUrl,
        nickname: input.nickname,
        description: input.description,
      );
}
