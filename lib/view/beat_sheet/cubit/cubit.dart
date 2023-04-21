import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/repository/auth_repository.dart';
import '../../../domain/beats/entity/beat_entity.dart';
import '../../../domain/beats/entity/create_beat_entity.dart';
import '../../../domain/beats/repository/beats_repository.dart';
import '../../../domain/files/files_repository.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class BeatSheetCubit extends Cubit<BeatSheetState> {
  final BeatsRepository beatsRepository;
  final FilesRepository filesRepository;
  final AuthRepository authRepository;

  BeatSheetCubit(
    this.beatsRepository,
    this.filesRepository,
    this.authRepository,
  ) : super(const BeatSheetState.initial());

  void createBeat({
    required File cover,
    required String title,
    required String description,
    required File mp3File,
    required File? wavFile,
    required File? zipFile,
    required List<String> genres,
    required int tempo,
    required String dimension,
  }) async {
    emit(const BeatSheetState.loading());

    final authorId = await authRepository.getUserID().first;
    if (authorId == null) {
      return emit(
        BeatSheetState.failure(
          title: 'unknown_error_title'.tr(),
          message: 'unknown_error_message'.tr(),
        ),
      );
    }

    final coverFileId = (await filesRepository.uploadFile(mp3File)).fold((failure) => null, (url) => url);
    if (coverFileId == null) {
      return emit(
        BeatSheetState.failure(
          title: 'unknown_error_title'.tr(),
          message: 'unknown_error_message'.tr(),
        ),
      );
    }

    final mp3FileId = (await filesRepository.uploadFile(mp3File)).fold((failure) => null, (url) => url);
    if (mp3FileId == null) {
      return emit(
        BeatSheetState.failure(
          title: 'unknown_error_title'.tr(),
          message: 'unknown_error_message'.tr(),
        ),
      );
    }

    String? wavFileId;
    if (wavFile != null) {
      wavFileId = (await filesRepository.uploadFile(wavFile)).fold((failure) => null, (url) => url);

      if (wavFileId == null) {
        return emit(
          BeatSheetState.failure(
            title: 'unknown_error_title'.tr(),
            message: 'unknown_error_message'.tr(),
          ),
        );
      }
    }

    String? zipFileId;
    if (zipFile != null) {
      zipFileId = (await filesRepository.uploadFile(zipFile)).fold((failure) => null, (url) => url);

      if (wavFileId == null) {
        return emit(
          BeatSheetState.failure(
            title: 'unknown_error_title'.tr(),
            message: 'unknown_error_message'.tr(),
          ),
        );
      }
    }

    final createBeat = CreateBeatEntity(
      authorId: authorId,
      cover: coverFileId,
      title: title,
      description: description,
      mp3FileId: mp3FileId,
      wavFileId: wavFileId,
      zipFileId: zipFileId,
      genres: genres,
      temp: tempo,
      dimension: dimension,
    );

    final beatEither = await beatsRepository.createBeat(createBeat);

    emit(beatEither.fold(
      (failure) => BeatSheetState.failure(
        title: 'unknown_error_title'.tr(),
        message: 'unknown_error_message'.tr(),
      ),
      (beat) => const BeatSheetState.success(),
    ));
  }
}
