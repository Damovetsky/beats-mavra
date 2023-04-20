import 'package:injectable/injectable.dart';
import './exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'models/create_user_model/create_private_user_model/create_private_user_model.dart';
import 'models/create_user_model/create_public_user_model/create_public_user_model.dart';
import 'models/update_user_model/update_user_model.dart';
import 'models/user_model/private_user_model/private_user_model.dart';
import 'models/user_model/public_user_model/public_user_model.dart';

abstract class UserService {
  Future<PrivateUserModel> getPrivateUser(String id);

  Future<PublicUserModel> getPublicUser(String id);

  Future<void> createUser({
    required String id,
    required CreatePublicUserModel publicUserModel,
    required CreatePrivateUserModel privateUserModel,
  });

  Future<void> updateUser(UpdateUserModel model);

  Future<void> changeBeatInMap({
    required String userId,
    required String beatId,
    required String mapName,
    required bool checked,
  });

  Future<void> changeBalance(String userId, int delta);
}

@Injectable(as: UserService)
class UserServiceImpl implements UserService {
  final FirebaseFirestore firestoreInstance;
  final UsersExceptionFactory exceptionFactory;
  late CollectionReference<Map<String, dynamic>> publicUsersCollection;
  late CollectionReference<Map<String, dynamic>> privateUsersCollection;

  UserServiceImpl(this.firestoreInstance, this.exceptionFactory) {
    publicUsersCollection = firestoreInstance.collection('public_users');
    privateUsersCollection = firestoreInstance.collection('private_users');
  }

  @override
  Future<void> changeBalance(String userId, int delta) async {
    final privateUser = await getPrivateUser(userId);
    await privateUsersCollection
        .doc(userId)
        .set({'balance': privateUser.balance + delta}, SetOptions(merge: true))
        .then((value) => null)
        .onError(
          (FirebaseException error, stackTrace) =>
              throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<PublicUserModel> getPublicUser(String id) {
    return publicUsersCollection
        .doc(id)
        .get()
        .then(
          (value) => value.exists
              ? PublicUserModel.fromJson(value.data()!)
              : throw UsersExceptionFactory().generateException('not-found'),
        )
        .onError(
          (FirebaseException error, stackTrace) =>
              throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<PrivateUserModel> getPrivateUser(String id) {
    return privateUsersCollection.doc(id).get().then((value) {
      final t = value.data();

      return value.exists
          ? PrivateUserModel.fromJson(value.data()!)
          : throw UsersExceptionFactory().generateException('not-found');
    }).onError(
      (FirebaseException error, stackTrace) =>
          throw exceptionFactory.generateException(error.code),
    );
  }

  @override
  Future<void> createUser({
    required String id,
    required CreatePublicUserModel publicUserModel,
    required CreatePrivateUserModel privateUserModel,
  }) async {
    await publicUsersCollection.doc(id).set(publicUserModel.toJson()).onError(
          (FirebaseException error, stackTrace) =>
              throw exceptionFactory.generateException(error.code),
        );

    await privateUsersCollection.doc(id).set(privateUserModel.toJson()).onError(
          (FirebaseException error, stackTrace) =>
              throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<void> updateUser(UpdateUserModel model) {
    return publicUsersCollection
        .doc(model.id)
        .set(model.toJson(), SetOptions(merge: true))
        .onError(
          (FirebaseException error, stackTrace) =>
              throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<void> changeBeatInMap({
    required String userId,
    required String beatId,
    required String mapName,
    required bool checked,
  }) {
    return publicUsersCollection
        .doc(userId)
        .update({'$mapName.$beatId': checked});
  }
}
