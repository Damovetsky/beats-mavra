import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseModule {
  @preResolve
  Future<FirebaseApp> get firebaseApp => Firebase.initializeApp();

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  FirebaseFirestore get firebaseStore => FirebaseFirestore.instance;

  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;
}
