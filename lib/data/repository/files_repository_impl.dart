import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../core/error/failure.dart';
import '../../domain/files/files_repository.dart';
import '../service/files_service/files_service.dart';
import 'package:path_provider/path_provider.dart';

class FilesRepositoryImpl implements FilesRepository {
  FilesService filesService;

  FilesRepositoryImpl(this.filesService);

  @override
  Future<Either<Failure, String>> uploadFile(File srcFile) async {
    final uploadFileModel = await filesService.uploadFile(srcFile);
    try {
      await uploadFileModel.uploadTask;
    } on FirebaseException {
      return Left(UnknownFailure());
    }
    return Right(uploadFileModel.fileId);
  }

  @override
  Future<Either<Failure, File>> downloadFile(String fileId) async {
    final dir = (await getTemporaryDirectory()).path;
    final temp = File('$dir/temp.file');
    try {
      await filesService.downloadFile(fileId, temp);
    } on FirebaseException {
      return Left(UnknownFailure());
    }
    return Right(temp);
  }
}
