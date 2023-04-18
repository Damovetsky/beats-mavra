import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../core/error/failure.dart';
import '../../domain/auth/repository/auth_repository.dart';
import '../../domain/auth/repository/failure.dart';
import '../service/auth_service/auth_service.dart';
import '../service/auth_service/exceptions.dart';
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
      authService.createUserWithEmailAndPassword(email, password);
      final id = await getUserID().first;
      if (id == null) {
        return Left(EmailNotFoundFailure());
      }
      userService.createUser(UserModel(
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
        authService.signInWithApple();
        return const Right(null);
      } catch (_) {
        return Left(UnknownFailure());
      }
    }

    @override
    Future<Either<Failure, void>> signInWithGoogle() async {
      try {
        authService.signInWithGoogle();
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
