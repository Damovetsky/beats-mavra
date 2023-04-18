import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../entity/user_entity.dart';
import '../entity/private_user_entity.dart';

abstract class ProfileRepository {
  Stream<Either<Failure, PrivateUserEntity>> getProfile();
}
