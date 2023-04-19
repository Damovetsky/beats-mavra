import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/auth/repository/auth_repository.dart';
import '../../domain/auth/repository/failure.dart';
import '../service/auth_service/auth_service.dart';
import '../service/auth_service/exceptions.dart';
import '../service/users_service/users_service.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {

  final AuthService authService;
  final UserService userService;

  AuthRepositoryImpl(this.authService, this.userService);

  @override
  Future<Either<Failure, void>> signIn({required String email, required String password}) async {
    try {
      authService.signInWithEmailAndPassword(email, password);
      return const Right(null);
    } on AccountAlreadyExistsException {
      return Left(AccountAlreadyExistsFailure());
    } on PasswordIsWeakException {
      return Left(AccountAlreadyExistsFailure());
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, void>> signUp({required String nickname, required String email, required String password}) async {
    try {
      // final id = await authService.createUserWithEmailAndPassword(email, password);
      // await userService.createUser(CreateUserModel(id, email, null, null));

      return const Right(null);
    } on NotFoundUserException {
      return Left(EmailNotFoundFailure());
    } on PasswordWrongException {
      return Left(WrongPasswordFailure());
    } catch (_) {
      return Left(UnknownFailure());
    }
  }


  @override
  Future<Either<Failure, void>> signInWithApple() async {
    try {
      final user = await authService.signInWithApple();

      final userID = user.user?.uid;
      if (userID == null) {
        return Left(UnknownFailure());
      }

      try {
        userService.getPrivateUser(userID);
      }  on NotFoundException {
        var nickname = user.user?.displayName;
        nickname ??= 'User';

        final email = user.user?.email;
        if (email == null) {
          return Left(UnknownFailure());
        }

        // await userService.createUser(CreateUserModel(userID, email, null, null));

      } catch (_) {
        return Left(UnknownFailure());
      }
      return const Right(null);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, void>> signInWithGoogle() async {
    try {

      final user = await authService.signInWithGoogle();

      final userID = user.user?.uid;
      if (userID == null) {
        return Left(UnknownFailure());
      }

      try {
        userService.getPrivateUser(userID);
      }  on NotFoundException {
        var nickname = user.user?.displayName;
        nickname ??= 'User';

        final email = user.user?.email;
        if (email == null) {
          return Left(UnknownFailure());
        }

        // await userService.createUser(CreateUserModel(userID, email, null, null));

      } catch (_) {
        return Left(UnknownFailure());
      }
      return const Right(null);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      authService.signOut();
      return const Right(null);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Stream<String?> getUserID() => authService.getUserID();
}
