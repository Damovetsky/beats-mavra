import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/profile/entity/private_user_entity/private_user_entity.dart';
import '../../domain/profile/repository/profile_repository.dart';
import '../converters/users/private_user_model_to_private_user_entity_converter copy.dart';
import '../service/auth_service/auth_service.dart';
import '../service/users_service/users_service.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  final AuthService authService;
  final UserService userService;
  final PrivateUserModelToPrivateUserEntityConverter privateUserEntityConverter;

  ProfileRepositoryImpl(
    this.authService,
    this.userService,
    this.privateUserEntityConverter,
  );

  @override
  Stream<Either<Failure, PrivateUserEntity>> getProfile() {
    return authService.getUserID().asyncMap((userId) async {
      try {
        if (userId == null) {
          return Left(UnauthorizedFailure());
        }

        final userModel = await userService.getPrivateUser(userId);
        final user = privateUserEntityConverter.convert(userModel);

        return Right(user);
      } on NotFoundException {
        return Left(NotFoundFailure());
      } catch (_) {
        return Left(UnknownFailure());
      }
    });
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      await authService.signOut();
    } catch (_) {
      return Left(UnknownFailure());
    }

    return Left(UnknownFailure());
  }
}
