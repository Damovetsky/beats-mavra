import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/user_entity.dart';
import '../../core/error/failure.dart';
import '../../domain/profile/repository/profile_repository.dart';
import '../service/auth_service/auth_service.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  final AuthService authService;

  ProfileRepositoryImpl(this.authService);

  @override
  Future<Either<Failure, UserEntity>> getProfile() async {
    return const Right(
      UserEntity(
        id: 'uuid',
        avatarUrl: 'https://picsum.photos/200/300',
        nickname: 'KerJen',
        description: 'Я мега крут',
      ),
    );
  }
}
