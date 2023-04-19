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
  final UsersExceptionFactory exceptionFactory;
  late CollectionReference<Map<String, dynamic>> usersCollection;

  UserServiceImpl(this.firestoreInstance, this.exceptionFactory) {
    usersCollection = firestoreInstance.collection('users');

    // User
  }

  @override
  Future<UserModel> getUser(String id) {
    return usersCollection
        .doc(id)
        .get()
        .then(
          (value) => value.exists
              ? UserModel.fromJson(value.data()!)
              : throw UsersExceptionFactory().generateException('not-found'),
        )
        .onError(
          (FirebaseException error, stackTrace) => throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<UserModel> createUser(UserModel user) {
    return usersCollection.doc(user.userId).set(user.toJson()).then((value) => getUser(user.userId)).onError(
          (FirebaseException error, stackTrace) => throw exceptionFactory.generateException(error.code),
        );
  }
}
