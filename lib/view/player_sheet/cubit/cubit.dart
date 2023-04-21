import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/beats/entity/beat_entity.dart';
import '../../../domain/beats/entity/playable_beat_entity.dart';
import '../../../domain/beats/repository/beats_repository.dart';
import '../../../domain/files/files_repository.dart';
import '../../../domain/users/entity/public_user_entity/public_user_entity.dart';
import '../../../domain/users/repository/users_repository.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class PlayerCubit extends Cubit<PlayerState> {
  final BeatsRepository beatsRepository;
  final FilesRepository filesRepository;
  final UsersRepository usersRepository;

  final BehaviorSubject<PlayableBeatEntity> playableBeat = BehaviorSubject<PlayableBeatEntity>();
  StreamSubscription? playableBeatSubscription;

  Tuple2<String, File>? currentBeatFile;

  PlayerCubit(
    this.beatsRepository,
    this.filesRepository,
    this.usersRepository,
  ) : super(const PlayerState.initial()) {
    playableBeatSubscription = beatsRepository.playableBeatStream().asyncMap(
      (playableBeat) async {
        if (playableBeat == null) {
          currentBeatFile = null;
          return const PlayerState.initial();
        }

        final authorEither = await usersRepository.getUser(userId: playableBeat.entity.authorId);

        final author = authorEither.fold((l) => null, (r) => r);

        if (currentBeatFile?.value1 == playableBeat.entity.mp3FileId) {
          return PlayerState.player(
            status: playableBeat.status,
            entity: playableBeat.entity,
            author: author,
            beatFile: currentBeatFile!.value2,
          );
        }

        emit(const PlayerState.loading());
        final beatFileEither = await filesRepository.downloadFile(
          fileId: playableBeat.entity.mp3FileId,
          extension: '.mp3',
        );

        return beatFileEither.fold(
          (failure) {
            return PlayerState.failure(
              title: 'unknown_error_title'.tr(),
              message: 'unknown_error_description'.tr(),
            );
          },
          (beatFile) {
            currentBeatFile = Tuple2(playableBeat.entity.mp3FileId, beatFile);
            return PlayerState.player(
              status: BeatPlayingStatus.started,
              entity: playableBeat.entity,
              author: author,
              beatFile: beatFile,
            );
          },
        );
      },
    ).listen(emit);
  }

  void play(PlayableBeatEntity playableBeat) {
    beatsRepository.play(playableBeat);
  }

  void reset() {
    beatsRepository.resetPlayableBeat();
  }

  @override
  Future<void> close() async {
    await playableBeatSubscription?.cancel();
    await playableBeat.close();
    return super.close();
  }
}
