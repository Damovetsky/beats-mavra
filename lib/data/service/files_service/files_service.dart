import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

abstract class FilesService {
  UploadTask uploadFile(String uploadUrl, File srcFile);

  DownloadTask downloadFile(String downloadUrl, File destinationFile);
}

@Injectable(as: FilesService)
class FilesServiceImpl {
  final FirebaseStorage firebaseStorage;

  FilesServiceImpl(this.firebaseStorage);

  @override
  UploadTask uploadFile(
    String uploadUrl,
    File srcFile,
  ) {
    final ref = firebaseStorage.ref().child(uploadUrl);
    return ref.putFile(srcFile);
  }

  @override
  DownloadTask downloadFile(
    String downloadUrl,
    File destinationFile,
  ) {
    final ref = firebaseStorage.ref().child(downloadUrl);
    return ref.writeToFile(destinationFile);
  }
}
