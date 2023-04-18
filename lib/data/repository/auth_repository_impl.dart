import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/auth/repository/auth_repository.dart';
import '../../domain/auth/repository/failure.dart';
import '../service/auth_service/auth_service.dart';
import '../service/auth_service/exceptions.dart';
import '../service/users_service/exceptions.dart';
import '../service/users_service/models/user_model/user_model.dart';
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
      final id = await authService.createUserWithEmailAndPassword(email, password); 
      await userService.createUser(UserModel(
        userId: id,
        nickname: nickname,
        avatar: '',
        description: '',
        favorites: List.empty(),
        balance: 0,
      ),);
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
        userService.getUser(userID);
      }  on NotFoundException {
        var nickname = user.user?.displayName;
        nickname ??= 'User';

        await userService.createUser(UserModel(
          userId: userID,
          nickname: nickname,
          avatar: '',
          description: '',
          favorites: List.empty(),
          balance: 0,
        ),);
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
        userService.getUser(userID);
      }  on NotFoundException {
        var nickname = user.user?.displayName;
        nickname ??= 'User';

        await userService.createUser(UserModel(
          userId: userID,
          nickname: nickname,
          avatar: '',
          description: '',
          favorites: List.empty(),
          balance: 0,
        ),);
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
