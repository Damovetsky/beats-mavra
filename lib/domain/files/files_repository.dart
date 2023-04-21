import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';

abstract class FilesRepository {
  Future<Either<Failure, String>> uploadFile(File srcFile);
  Future<Either<Failure, String>> getFileUrl(String fileId);
  Future<Either<Failure, File>> downloadFile({required String fileId, required String extension});
}
