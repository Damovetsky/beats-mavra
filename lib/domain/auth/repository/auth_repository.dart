import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> signIn({
    required String email,
    required String password,
  });

  Future<Either<Failure, bool>> get isAuthorized;

  Future<Either<Failure, User>> signUp({
    required String nickname,
    required String email,
    required String password,
  });

  Future<Either<Failure, void>> logout();
}
