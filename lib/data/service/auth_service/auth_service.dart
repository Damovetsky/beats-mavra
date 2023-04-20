import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:injectable/injectable.dart';
import 'exceptions.dart';

abstract class AuthService {
  Future<UserCredential> createUserWithEmailAndPassword(String emailAddress, String password);
  Future<void> signInWithEmailAndPassword(String emailAddress, String password);
  Stream<String?> getUserID();
  Future<void> signOut();

  Future<UserCredential> signInWithGoogle();
  Future<UserCredential> signInWithApple();
}

@Injectable(as: AuthService)
class AuthServiceImpl implements AuthService {
  final FirebaseAuth firebaseAuth;

  final AuthExceptionFactory authExceptionFactory;

  AuthServiceImpl(this.firebaseAuth, this.authExceptionFactory);

  @override
  Future<UserCredential> createUserWithEmailAndPassword(String emailAddress, String password) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      throw authExceptionFactory.generateException(e.code);
    }
  }

  @override
  Future<void> signInWithEmailAndPassword(String emailAddress, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      // return credential.user?.uid;
    } on FirebaseAuthException catch (e) {
      throw authExceptionFactory.generateException(e.code);
    }
  }

  @override
  Future<UserCredential> signInWithApple() async {
    final appleProvider = AppleAuthProvider();
    if (kIsWeb) {
      return await firebaseAuth.signInWithPopup(appleProvider);
    } else {
      return await firebaseAuth.signInWithProvider(appleProvider);
    }
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await firebaseAuth.signInWithCredential(credential);
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  @override
  Stream<String?> getUserID() => firebaseAuth.authStateChanges().map((user) => user?.uid);
}
