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
import '../../../domain/purchases/entity/create_offer_entity.dart';
import '../../../domain/purchases/repository/purchases_repository.dart';
import '../widget/beat_files.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class BeatSheetCubit extends Cubit<BeatSheetState> {
  final BeatsRepository beatsRepository;
  final FilesRepository filesRepository;
  final AuthRepository authRepository;
  final PurchasesRepository purchasesRepository;

  BeatSheetCubit(
    this.beatsRepository,
    this.filesRepository,
    this.authRepository,
    this.purchasesRepository,
  ) : super(const BeatSheetState.initial());

  void createBeat({
    required File cover,
    required String title,
    required String description,
    required BeatViewObject mp3File,
    required BeatViewObject? wavFile,
    required BeatViewObject? zipFile,
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

    final coverFileId = (await filesRepository.uploadFile(cover)).fold((failure) => null, (fileId) => fileId);
    if (coverFileId == null) {
      return emit(
        BeatSheetState.failure(
          title: 'unknown_error_title'.tr(),
          message: 'unknown_error_message'.tr(),
        ),
      );
    }

    final coverUrl = (await filesRepository.getFileUrl(coverFileId)).fold((l) => null, (url) => url);
    if (coverUrl == null) {
      return emit(
        BeatSheetState.failure(
          title: 'unknown_error_title'.tr(),
          message: 'unknown_error_message'.tr(),
        ),
      );
    }

    final mp3FileId = (await filesRepository.uploadFile(mp3File.file)).fold((failure) => null, (url) => url);
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
      wavFileId = (await filesRepository.uploadFile(wavFile.file)).fold((failure) => null, (url) => url);

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
      zipFileId = (await filesRepository.uploadFile(zipFile.file)).fold((failure) => null, (url) => url);

      if (wavFileId == null) {
        return emit(
          BeatSheetState.failure(
            title: 'unknown_error_title'.tr(),
            message: 'unknown_error_message'.tr(),
          ),
        );
      }
    }

    final graph = (await beatsRepository.getGraph(mp3File.file)).fold((l) => null, (graph) => graph);

    if (graph == null) {
      return emit(
        BeatSheetState.failure(
          title: 'unknown_error_title'.tr(),
          message: 'unknown_error_message'.tr(),
        ),
      );
    }

    final createBeat = CreateBeatEntity(
      authorId: authorId,
      cover: coverUrl,
      title: title,
      description: description,
      mp3FileId: mp3FileId,
      wavFileId: wavFileId,
      zipFileId: zipFileId,
      genres: genres,
      temp: tempo,
      dimension: dimension,
      graph: graph,
    );

    final beat = (await beatsRepository.createBeat(createBeat)).fold((l) => null, (beat) => beat);

    if (beat == null) {
      return emit(
        BeatSheetState.failure(
          title: 'unknown_error_title'.tr(),
          message: 'unknown_error_message'.tr(),
        ),
      );
    }

    await purchasesRepository.createOffer(
      CreateOfferEntity(
        beatId: beat.beatId,
        authorId: authorId,
        licenseType: 'Exclusive',
        fileType: 'bronze',
        price: int.tryParse(mp3File.priceController.text) ?? 0,
      ),
    );

    if (wavFile != null) {
      await purchasesRepository.createOffer(
        CreateOfferEntity(
          beatId: beat.beatId,
          authorId: authorId,
          licenseType: 'Exclusive',
          fileType: 'silver',
          price: int.tryParse(wavFile.priceController.text) ?? 0,
        ),
      );
    }
    if (zipFile != null) {
      await purchasesRepository.createOffer(
        CreateOfferEntity(
          beatId: beat.beatId,
          authorId: authorId,
          licenseType: 'Exclusive',
          fileType: 'gold',
          price: int.tryParse(zipFile.priceController.text) ?? 0,
        ),
      );
    }

    emit(const BeatSheetState.success());
  }
}
