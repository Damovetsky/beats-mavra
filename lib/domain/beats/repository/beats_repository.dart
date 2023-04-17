import 'package:dartz/dartz.dart';
import 'dart:async';
import '../../../core/error/failure.dart';
import '../entity/beat_entity.dart';

abstract class BeatsRepository {
  Stream<Either<Failure, List<BeatEntity>>> get(
      StreamController<BeatEntity> lastEntityStream,
      [int limit = 25]);
}
