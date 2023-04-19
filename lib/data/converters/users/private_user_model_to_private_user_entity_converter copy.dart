import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../domain/profile/entity/private_user_entity/private_user_entity.dart';
import '../../service/users_service/models/user_model/private_user_model/private_user_model.dart';

@injectable
class PrivateUserModelToPrivateUserEntityConverter extends Converter<PrivateUserModel, PrivateUserEntity> {
  @override
  PrivateUserEntity convert(PrivateUserModel input) {
    return PrivateUserEntity(
      id: input.id,
      email: input.email,
      balance: input.balance,
      favorite: input.favorite.entries.where((element) => element.value).map((element) => element.key).toList(),
      bought: input.bought.entries.where((element) => element.value).map((element) => element.key).toList(),
      created: input.created.entries.where((element) => element.value).map((element) => element.key).toList(),
    );
  }
}
