import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../core/error/exception.dart';
import '../../../core/error/failure.dart';
import 'models/file_model.dart';
import 'models/upload_file_model.dart';

abstract class FilesService {
  Future<UploadFileModel> uploadFile(File srcFile);

  Future<String> getFileUrl(String fileId);

  Future<DownloadTask> downloadFile(String fileId, File destFile);
}

@Injectable(as: FilesService)
class FilesServiceImpl extends FilesService {
  final FirebaseStorage firebaseStorage;
  final FirebaseFirestore firestoreInstance;

  late CollectionReference<Map<String, dynamic>> filesCollection;

  FilesServiceImpl(this.firebaseStorage, this.firestoreInstance) {
    filesCollection = firestoreInstance.collection('files');
  }

  @override
  Future<UploadFileModel> uploadFile(
    File srcFile,
  ) async {
    final fileId = const Uuid().v4();
    final fileRef = '/files/${const Uuid().v4()}';
    filesCollection.doc(fileId).set({'fileId': fileId, 'ref': fileRef});
    final ref = firebaseStorage.ref().child(fileRef);
    return UploadFileModel(
      fileId: fileId,
      ref: fileRef,
      uploadTask: ref.putFile(srcFile),
    );
  }

  @override
  Future<String> getFileUrl(String fileId) async {
    final fileModel = await filesCollection.doc(fileId).get().then(
          (value) => value.exists
              ? FileModel.fromJson(value.data()!)
              : throw NotFoundException(),
        );
    return firebaseStorage.ref().child(fileModel.ref).getDownloadURL();
  }

  @override
  Future<DownloadTask> downloadFile(String fileId, File destFile) async {
    final fileModel = await filesCollection.doc(fileId).get().then(
          (value) => value.exists
              ? FileModel.fromJson(value.data()!)
              : throw NotFoundException(),
        );
    return firebaseStorage.ref().child(fileModel.ref).writeToFile(destFile);
  }
}
