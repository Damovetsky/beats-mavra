import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../data/service/users_service/users_service.dart';
import '../../entity/user_entity.dart';

abstract class UsersRepository {
  final UserService service;

  UsersRepository(this.service);

  Future<Either<Failure, UserEntity>> getUser();
}
