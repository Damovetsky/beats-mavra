import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../model/beat_model.dart';

abstract class BeatsStorage {
  Future<Either<Failure, List<BeatModel>>> getBeats({
    BeatModel? lastVisible,
    int limit = 25,
  });
  Future<Either<Failure, BeatModel>> createBeat(BeatModel beatModel);
  Future<Either<Failure, BeatModel>> getBeat(String beatId);
  Future<Either<Failure, BeatModel>> updateBeat(BeatModel beatModel);
  Future<Either<Failure, void>> deleteBeat(String beatId);
}