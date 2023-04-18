import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../entity/user_entity.dart';
import '../entity/profile_entity.dart';

abstract class ProfileRepository {
  Future<Either<Failure, UserEntity>> getProfile();
}
