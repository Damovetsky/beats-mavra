import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_model.freezed.dart';

@freezed
class UploadFileModel with _$UploadFileModel {
  const factory UploadFileModel({
    required String fileId,
    required String ref,
    required UploadTask uploadTask,
  }) = _UploadFileModel;
}
