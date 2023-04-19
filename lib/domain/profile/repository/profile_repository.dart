import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entity/private_user_entity/private_user_entity.dart';

abstract class ProfileRepository {
  Stream<Either<Failure, PrivateUserEntity>> getProfile();
  Future<Either<Failure, void>> signOut();
}
