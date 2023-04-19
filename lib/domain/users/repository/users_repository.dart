import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entity/public_user_entity/public_user_entity.dart';

abstract class UsersRepository {
  Future<Either<Failure, PublicUserEntity>> getUser({required String userId});
}
