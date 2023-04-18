import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../core/error/failure.dart';
import '../../domain/profile/entity/private_user_entity.dart';
import '../../domain/profile/repository/profile_repository.dart';
import '../service/auth_service/auth_service.dart';
import '../service/users_service/users_service.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  final AuthService authService;
  final UserService userService;

  ProfileRepositoryImpl(this.authService, this.userService);

  @override
  Stream<Either<Failure, PrivateUserEntity>> getProfile() {
    return authService.getUserID().switchMap(
      (userId) {
        return Stream.value(const Right(PrivateUserEntity(email: 'e', my: [], bought: [], favorite: [])));
      },
    );
  }
}
