import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/users/entity/public_user_entity/public_user_entity.dart';
import '../../domain/users/repository/users_repository.dart';
import '../converters/users/public_user_model_to_public_user_entity_converter.dart';
import '../service/users_service/models/update_user_model/update_user_model.dart';
import '../service/users_service/users_service.dart';

@LazySingleton(as: UsersRepository)
class UsersRepositoryImpl extends UsersRepository {
  final UserService userService;
  final PublicUserModelToPublicUserEntityConverter publicUserEntityConverter;

  UsersRepositoryImpl(
    this.userService,
    this.publicUserEntityConverter,
  );

  @override
  Future<Either<Failure, PublicUserEntity>> getUser({required String userId}) async {
    try {
      final userModel = await userService.getPublicUser(userId);
      final user = publicUserEntityConverter.convert(userModel);

      return Right(user);
    } on NotFoundException {
      return Left(NotFoundFailure());
    } catch (_) {
      return Left(UnknownFailure());
    }
  }
}
