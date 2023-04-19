import 'package:injectable/injectable.dart';
import './exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'models/create_user_model/create_user_model.dart';
import 'models/private_user_model/private_user_model.dart';
import 'models/public_user_model/public_user_model.dart';
import 'models/update_user_model/update_user_model.dart';

abstract class UserService {
  Future<PrivateUserModel> getPrivateUser(String id);
  Future<PublicUserModel> getPublicUser(String id);
  Future<void> createUser(CreateUserModel model);
  Future<void> updateUser(UpdateUserModel model);
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
  Future<PublicUserModel> getPublicUser(String id) {
    return usersCollection
        .doc(id)
        .get()
        .then(
          (value) => value.exists
              ? PublicUserModel.fromJson(value.data()!)
              : throw UsersExceptionFactory().generateException('not-found'),
        )
        .onError(
          (FirebaseException error, stackTrace) => throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<PrivateUserModel> getPrivateUser(String id) {
    return usersCollection
        .doc(id)
        .get()
        .then(
          (value) => value.exists
              ? PrivateUserModel.fromJson(value.data()!)
              : throw UsersExceptionFactory().generateException('not-found'),
        )
        .onError(
          (FirebaseException error, stackTrace) => throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<void> createUser(CreateUserModel model) {
    return usersCollection.doc(model.id).set(model.toJson()).onError(
          (FirebaseException error, stackTrace) => throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<void> updateUser(UpdateUserModel model) {
    return usersCollection.doc(model.id).set(model.toJson(), SetOptions(merge: true)).onError(
          (FirebaseException error, stackTrace) => throw exceptionFactory.generateException(error.code),
        );
  }
}
