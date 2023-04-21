import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/beats/entity/beat_entity.dart';
import '../../domain/beats/entity/create_beat_entity.dart';
import '../../domain/beats/entity/playable_beat_entity.dart';
import '../../domain/beats/entity/filter_beats_entity.dart';
import '../../domain/beats/entity/update_beat_entity.dart';
import '../../domain/beats/repository/beats_repository.dart';

import '../converters/beats/beat_model_to_beat_entity_converter.dart';
import '../converters/beats/create_beat_entity_to_beat_model_converter.dart';
import '../converters/beats/filter_beats_entity_to_filter_beats_model_converter.dart';
import '../converters/beats/update_beat_entity_to_beat_model_converter.dart';
import '../service/auth_service/auth_service.dart';
import '../service/beats_service/beats_service.dart';
import '../service/files_service/files_service.dart';
import '../service/users_service/users_service.dart';

@LazySingleton(as: BeatsRepository)
class BeatsRepositoryImpl extends BeatsRepository {
  final BeatsService beatsService;
  final AuthService authService;
  final UserService usersService;
  final FilesService filesService;

  final BeatModelToBeatEntityConverter beatEntityConverter;
  final FilterBeatsEntityToFilterBeatsModelConverter filterBeatsModelConvertor;

  BeatsRepositoryImpl(
    this.beatsService,
    this.authService,
    this.usersService,
    this.filesService,
    this.beatEntityConverter,
    this.filterBeatsModelConvertor,
  );

  @override
  Stream<Either<Failure, List<BeatEntity>>> get(
    StreamController<BeatEntity?> lastEntityStream, {
    int limit = 25,
    FilterBeatsEntity filterBeatsEntity = const FilterBeatsEntity(),
  }) {
    return lastEntityStream.stream.asyncMap((last) async {
      try {
        final beats = (await beatsService.getBeats(
          lastVisibleTitle: last?.title,
          limit: limit,
          filter: filterBeatsModelConvertor.convert(filterBeatsEntity),
        ));
        return Right(
          beats.map(beatEntityConverter.convert).toList(),
        );
      } on UnknownException {
        return Left(UnknownFailure());
      }
    });
  }

  @override
  Future<Either<Failure, BeatEntity>> createBeat(
    CreateBeatEntity createBeatEntity,
  ) async {
    try {
      final beat = await beatsService.createBeat(
        CreateBeatEntityToBeatModelConverter(const Uuid().v4()).convert(
          createBeatEntity,
        ),
      );

      await usersService.changeBeatInMap(
        userId: createBeatEntity.authorId,
        beatId: beat.beatId,
        mapName: 'created',
        checked: true,
      );

      return Right(BeatModelToBeatEntityConverter().convert(beat));
    } on AlreadyExistException {
      return Left(UnknownFailure());
    } on UnknownException {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteBeat(String beatId) async {
    try {
      return Right(await beatsService.deleteBeat(beatId));
    } on NotFoundException {
      return Left(NotFoundFailure());
    } on UnknownException {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, BeatEntity>> getBeat(String beatId) async {
    try {
      return Right(
        beatEntityConverter.convert(await beatsService.getBeat(beatId)),
      );
    } on NotFoundException {
      return Left(NotFoundFailure());
    } on UnknownException {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, BeatEntity>> updateBeat(
    String beatId,
    String authorId,
    UpdateBeatEntity updateBeatEntity,
  ) async {
    try {
      return Right(
        BeatModelToBeatEntityConverter().convert(
          await beatsService.updateBeat(
            UpdateBeatEntityToBeatModelConverter(beatId, authorId).convert(
              updateBeatEntity,
            ),
          ),
        ),
      );
    } on NotFoundException {
      return Left(NotFoundFailure());
    } on UnknownException {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<double>>> getGraph(File beatFile) async {
    try {
      return Right(await beatsService.getGraph(beatFile));
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, void>> like({required String beatId}) async {
    try {
      final userId = await authService.getUserID().first;

      if (userId != null) {
        final user = await usersService.getPrivateUser(userId);
        final isFavorite = user.favorite[beatId] ?? false;

        await usersService.changeBeatInMap(
          userId: userId,
          beatId: beatId,
          mapName: 'favorite',
          checked: !isFavorite,
        );

        return const Right(null);
      }

      return Left(UnknownFailure());
    } catch (_) {
      return Left(UnknownFailure());
    }
  }

  final BehaviorSubject<PlayableBeatEntity?> _playController = BehaviorSubject<PlayableBeatEntity?>();

  @override
  void play(PlayableBeatEntity playableBeat) {
    _playController.add(playableBeat);
  }

  @override
  void resetPlayableBeat() {
    _playController.add(null);
  }

  @override
  Stream<PlayableBeatEntity?> playableBeatStream() => _playController.stream;
}
