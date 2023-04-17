import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import './exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'models/user_model/user_model.dart';

abstract class UserService {
  Future<UserModel> getUser(String id);
  Future<UserModel> createUser(UserModel user);
}

@Injectable(as: UserService)
class UserServiceImpl implements UserService {
  final FirebaseFirestore firestoreInstance;
  late CollectionReference<Map<String, dynamic>> usersCollection;

  UserServiceImpl(this.firestoreInstance) {
    usersCollection = firestoreInstance.collection('users');
  }

  @override
  Future<UserModel> getUser(String id) {
    return usersCollection
        .doc(id)
        .get()
        .then((value) =>
    value.exists
        ? UserModel.fromJson(value.data()!)
        : throw UsersExceptionFactory().generateException('does-not-exist'),)
        .onError((FirebaseException error, stackTrace) =>
    throw UsersExceptionFactory().generateException(error.code),);
  }

  @override
  Future<UserModel> createUser(UserModel user) {
    return usersCollection
        .doc(user.userId)
        .set(user.toJson())
        .then((value) => getUser(user.userId))
        .onError((FirebaseException error, stackTrace) =>
    throw UsersExceptionFactory().generateException(error.code),);
  }
}