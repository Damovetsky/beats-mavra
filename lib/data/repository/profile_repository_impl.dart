import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/exception.dart';
import '../../domain/entity/user_entity.dart';
import '../../core/error/failure.dart';
import '../../domain/profile/entity/profile_entity.dart';
import '../../domain/profile/repository/profile_repository.dart';
import '../service/auth_service/auth_service.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  final AuthService authService;

  ProfileRepositoryImpl(this.authService);

  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    try {
      final userId = authService.getUserID();

      return Right(
        ProfileEntity(
          user: UserEntity(id: '', avatarUrl: '', nickname: 'KerJen', description: 'COOOOL'),
          email: 'example@email.com',
        ),
      );
    } on UnknownException {
      return Left(UnknownFailure());
    }
  }
}
