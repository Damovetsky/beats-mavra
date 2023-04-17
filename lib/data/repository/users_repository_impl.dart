import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failure.dart';
import '../../domain/entity/user_entity.dart';
import '../../domain/users/repository/users_repository.dart';

@LazySingleton(as: UsersRepository)
class UsersRepositoryImpl extends UsersRepository {
  UsersRepositoryImpl(super.service);

  @override
  Future<Either<Failure, UserEntity>> getUser() async {
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
