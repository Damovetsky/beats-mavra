import 'package:injectable/injectable.dart';

import '../../domain/users/repository/users_repository.dart';

@LazySingleton(as: UsersRepository)
class UsersRepositoryImpl extends UsersRepository {}
