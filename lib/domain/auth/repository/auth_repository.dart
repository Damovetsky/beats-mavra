import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/error/failure.dart';

abstract class AuthRepository {

  Future<Either<Failure, void>> signIn({
    required String email,
    required String password,
  });

  Future<Either<Failure, void>> signUp({
    required String nickname,
    required String email,
    required String password,
  });

  Future<Either<Failure, void>> signInWithGoogle();

  Future<Either<Failure, void>> signInWithApple();

  Stream<String?> getUserID();

  Future<Either<Failure, void>> logout();
}
