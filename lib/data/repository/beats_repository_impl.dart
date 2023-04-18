import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

import '../../core/error/failure.dart';
import '../../domain/beats/entity/beat_entity.dart';
import '../../domain/beats/entity/create_beat_entity.dart';
import '../../domain/beats/entity/update_beat_entity.dart';
import '../../domain/beats/repository/beats_repository.dart';

import '../converters/beat_model_to_beat_entity_converter.dart';
import '../converters/create_beat_entity_to_beat_model_converter.dart';
import '../converters/update_beat_entity_to_beat_model_converter.dart';
import '../service/beats_service/beats_service.dart';
import '../service/beats_service/exceptions.dart';

@LazySingleton(as: BeatsRepository)
class BeatsRepositoryImpl extends BeatsRepository {
  final BeatsService beatsService;

  BeatsRepositoryImpl(this.beatsService);

  @override
  Stream<Either<Failure, List<BeatEntity>>> get(
    StreamController<BeatEntity?> lastEntityStream, [
    int limit = 25,
  ]) {
    return lastEntityStream.stream.asyncMap((last) async {
      try {
        final beats = (await beatsService.getBeats(lastVisible: last?.beatId, limit: limit));
        return Right(
          beats.map(BeatModelToBeatEntityConverter().convert).toList(),
        );
      } on BeatsUnknownException catch (e) {
        return Left(UnknownFailure());
      }
    });
  }

  @override
  Future<Either<Failure, BeatEntity>> createBeat(
    CreateBeatEntity createBeatEntity,
  ) async {
    try {
      return Right(
        BeatModelToBeatEntityConverter().convert(
          await beatsService.createBeat(
            CreateBeatEntityToBeatModelConverter(const Uuid().v4()).convert(
              createBeatEntity,
            ),
          ),
        ),
      );
    } on BeatAlreadyExistsException catch (e) {
      return Left(UnknownFailure());
    } on BeatsUnknownException catch (e) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteBeat(String beatId) async {
    try {
      return Right(await beatsService.deleteBeat(beatId));
    } on BeatNotFoundException catch (e) {
      return Left(UnknownFailure());
    } on BeatsUnknownException catch (e) {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, BeatEntity>> getBeat(String beatId) async {
    try {
      return Right(
        BeatModelToBeatEntityConverter().convert(await beatsService.getBeat(beatId)),
      );
    } on BeatNotFoundException catch (e) {
      return Left(UnknownFailure());
    } on BeatsUnknownException catch (e) {
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
    } on BeatNotFoundException catch (e) {
      return Left(UnknownFailure());
    } on BeatsUnknownException catch (e) {
      return Left(UnknownFailure());
    }
  }
}
