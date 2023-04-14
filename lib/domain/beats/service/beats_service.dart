import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entity/beat_entity.dart';

abstract class BeatsService {
  Future<Either<Failure, List<BeatEntity>>> getBeats({
    BeatEntity? lastVisible,
    int limit = 25,
  });
  Future<Either<Failure, BeatEntity>> createBeat(BeatEntity createBeat);
  Future<Either<Failure, BeatEntity>> getBeat(String beatId);
  Future<Either<Failure, BeatEntity>> updateBeat(BeatEntity updateBeat);
  Future<Either<Failure, void>> deleteBeat(String beatId);
}