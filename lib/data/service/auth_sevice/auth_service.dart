import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart'
    show kIsWeb;
import 'package:injectable/injectable.dart';
import '../../../core/error/exception.dart';
import 'exceptions.dart';

abstract class AuthService {
  void createUserWithEmailAndPassword(String emailAddress, String password);
  void signInWithEmailAndPassword(String emailAddress, String password);
  String getUserID();
  void signOut();

  void signInWithGoogle();
  void signInWithApple();
}

@Injectable(as: AuthService)
class AuthServiceImpl implements AuthService {

  @override
  Future<void> createUserWithEmailAndPassword(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw PasswordIsWeakException();
      } else if (e.code == 'email-already-in-use') {
        throw AccountAlreadyExistsException();
      } else {
        throw UnknownException();
      }
    }
  }


  @override
  Future<void> signInWithEmailAndPassword(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress,
          password: password,
      );
      // return credential.user?.uid;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw NotFoundUserException();
      } else if (e.code == 'wrong-password') {
        throw PasswordWrongException();
      }
      throw UnknownException();
    }
  }

  @override
  Future<UserCredential> signInWithApple() async {
    final appleProvider = AppleAuthProvider();
    if (kIsWeb) {
      return await FirebaseAuth.instance.signInWithPopup(appleProvider);
    } else {
      return await FirebaseAuth.instance.signInWithProvider(appleProvider);
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
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  String getUserID() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      throw UnknownException();
    }
    return user.uid;
  }
}