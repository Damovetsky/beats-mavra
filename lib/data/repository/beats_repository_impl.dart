import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failure.dart';
import '../../domain/beats/entity/beat_entity.dart';
import '../../domain/beats/repository/beats_repository.dart';
import 'package:rxdart/rxdart.dart';

import '../converters/beat_model_to_beat_entity_converter.dart';
import '../service/beats_service/beats_service.dart';
import '../service/beats_service/exceptions.dart';
import '../service/beats_service/models/beat_model.dart';

class BeatsUnknownFailure implements Failure {
  @override
  String? get message => 'Unknown failure';
}

@LazySingleton(as: BeatsRepository)
class BeatsRepositoryImpl extends BeatsRepository {
  final BeatsService beatsService;
  final Converter<BeatModel, BeatEntity> beatModelToBeatEntityConverter;

  BeatsRepositoryImpl(this.beatsService, this.beatModelToBeatEntityConverter);

  @override
  Stream<Either<Failure, List<BeatEntity>>> get(
    StreamController<BeatEntity> lastEntityStream, [
    int limit = 25,
  ]) {
    return lastEntityStream.stream.asyncMap((last) async {
      try {
        final beats = (await beatsService.getBeats(lastVisible: last.beatId));
        return Right(
          beats.map(beatModelToBeatEntityConverter.convert).toList(),
        );
      } on BeatsUnknownException catch (e) {
        return Left(BeatsUnknownFailure());
      }
    });
  }
}
