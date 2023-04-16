import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../core/error/failure.dart';
import '../../domain/auth/repository/auth_repository.dart';
import '../../domain/auth/repository/failure.dart';
import '../service/auth_service/auth_service.dart';
import '../service/auth_service/exceptions.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {

  final AuthService authService;
  AuthRepositoryImpl(this.authService);

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
      //TODO: req to User service (add nickname)
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
