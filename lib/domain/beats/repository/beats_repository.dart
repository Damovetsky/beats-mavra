import 'package:dartz/dartz.dart';
import 'dart:async';
import '../../../core/error/failure.dart';
import '../entity/beat_entity.dart';
import '../entity/create_beat_entity.dart';
import '../entity/update_beat_entity.dart';

abstract class BeatsRepository {
  Stream<Either<Failure, List<BeatEntity>>> get(
      StreamController<BeatEntity> lastEntityStream,
      [int limit = 25,]);

  Future<Either<Failure, BeatEntity>> getBeat(String beatId);

  Future<Either<Failure, BeatEntity>> updateBeat(String beatId, String authorId, UpdateBeatEntity updateBeatEntity);

  Future<Either<Failure, void>> deleteBeat(String beatId);

  Future<Either<Failure, BeatEntity>> createBeat(CreateBeatEntity createBeatEntity);
}
