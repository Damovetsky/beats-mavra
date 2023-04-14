import 'package:dartz/dartz.dart';
import '../../core/error/failure.dart';
import '../../domain/beats/entity/beat_entity.dart';
import '../../domain/beats/service/beats_service.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class BeatsFailure extends Failure {
  late String msg;

  BeatsFailure(String message) {
    msg = message;
  }

  @override
  get message => msg;
}

class BeatsFirbase implements BeatsService {
  final beatsCollection = FirebaseFirestore.instance.collection('beats');

  @override
  Future<Either<Failure, BeatEntity>> createBeat(BeatEntity beatEntity) {
    return beatsCollection
        .doc(beatEntity.beatId)
        .set(beatEntity.toJson())
        .then((value) => getBeat(beatEntity.beatId))
        .onError(
          (FirebaseException error, stackTrace) =>
              left(BeatsFailure(error.code + (error.message ?? ''))),
        );
  }

  @override
  Future<Either<Failure, void>> deleteBeat(String beatId) {
    return beatsCollection
        .doc(beatId)
        .delete()
        .then((value) => right(null) as Either<Failure, void>)
        .onError(
          (FirebaseException error, stackTrace) =>
              left(BeatsFailure(error.code + (error.message ?? ''))),
        );
  }

  @override
  Future<Either<Failure, BeatEntity>> getBeat(String beatId) {
    return beatsCollection
        .doc(beatId)
        .get()
        .then(
          (value) => right(BeatEntity.fromJson(value.data()!))
              as Either<Failure, BeatEntity>,
        )
        .onError(
          (FirebaseException error, stackTrace) =>
              left(BeatsFailure(error.code)),
        );
  }

  @override
  Future<Either<Failure, List<BeatEntity>>> getBeats({
    BeatEntity? lastVisible,
    int limit = 25,
  }) {
    final cursor = lastVisible == null
        ? beatsCollection.orderBy('beatId').limit(limit)
        : beatsCollection
            .orderBy('beatId')
            .limit(limit)
            .startAfter([lastVisible.beatId]);
    return cursor
        .get()
        .then(
          (snapshots) => right(
            snapshots.docs
                .map((element) => BeatEntity.fromJson(element.data()))
                .toList(growable: false),
          ) as Either<Failure, List<BeatEntity>>,
        )
        .onError((FirebaseException error, stackTrace) =>
            left(BeatsFailure(error.code + (error.message ?? ''))));
  }

  @override
  Future<Either<Failure, BeatEntity>> updateBeat(BeatEntity beatEntity) async {
    return beatsCollection
        .doc(beatEntity.beatId)
        .set(beatEntity.toJson())
        .then((value) => getBeat(beatEntity.beatId))
        .onError(
          (FirebaseException error, stackTrace) =>
              left(BeatsFailure(error.code + (error.message ?? ''))),
        );
  }
}
