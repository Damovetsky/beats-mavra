import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/auth/repository/auth_repository.dart';
import '../../domain/auth/repository/failure.dart';
import '../service/auth_service/auth_service.dart';
import '../service/auth_service/exceptions.dart';
import '../service/users_service/models/create_user_model/create_private_user_model/create_private_user_model.dart';
import '../service/users_service/models/create_user_model/create_public_user_model/create_public_user_model.dart';
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
    } on NotFoundUserException {
      return Left(EmailNotFoundFailure());
    } on PasswordWrongException {
      return Left(WrongPasswordFailure());
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, void>> signUp({required String nickname, required String email, required String password}) async {
    try {
      final credential = await authService.createUserWithEmailAndPassword(email, password);
      final user = credential.user;
      if (user == null) {
        return Left(UnknownFailure());
      }
      await _createUser(id: user.uid, email: email, nickname: nickname);

      return const Right(null);
    } on AccountAlreadyExistsException {
      return Left(AccountAlreadyExistsFailure());
    } on PasswordIsWeakException {
      return Left(PasswordIsWeakFailure());
    } catch (_) {
      return Left(UnknownFailure());
    }
  }


  @override
  Future<Either<Failure, void>> signInWithApple() async {
    try {
      final credential = await authService.signInWithApple();
      final user = credential.user;
      if (user == null) {
        return Left(UnknownFailure());
      }

      try {
        userService.getPrivateUser(user.uid);
      }  on NotFoundException {
        final nickname = user.displayName ?? 'User';

        final email = user.email;
        if (email == null) {
          return Left(UnknownFailure());
        }

        await _createUser(id: user.uid, email: email, nickname: nickname);

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

      final credential = await authService.signInWithGoogle();

      final user = credential.user;
      if (user == null) {
        return Left(UnknownFailure());
      }
      try {
        userService.getPrivateUser(user.uid);
      }  on NotFoundException {
        final nickname = user.displayName ?? 'User';

        final email = user.email;
        if (email == null) {
          return Left(UnknownFailure());
        }

        await _createUser(id: user.uid, email: email, nickname: nickname);

      } catch (_) {
        return Left(UnknownFailure());
      }
      return const Right(null);
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  Future<void> _createUser({required String id, required String email, required String nickname}) async {
    await userService.createUser(
        id: id,
        publicUserModel: CreatePublicUserModel(id, null, nickname, ''),
        privateUserModel: CreatePrivateUserModel(id, email),
    );
  }

  @override
  Future<Either<Failure, void>> signOut() async {
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
