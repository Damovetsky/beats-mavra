import 'package:dartz/dartz.dart';
import '../../core/error/failure.dart';
import '../../domain/beats/model/beat_model.dart';
import '../../domain/beats/storage/beats_storage.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class BeatsFailure extends Failure {
  late String msg;

  BeatsFailure(String message) {
    msg = message;
  }

  @override
  get message => msg;
}

class BeatsFirebase implements BeatsStorage {
  final beatsCollection = FirebaseFirestore.instance.collection('beats');

  @override
  Future<Either<Failure, BeatModel>> createBeat(BeatModel beatModel) async {
    return beatsCollection
        .doc(beatModel.beatId)
        .set(beatModel.toJson())
        .then((value) => getBeat(beatModel.beatId))
        .onError(
          (FirebaseException error, stackTrace) => Left<Failure, BeatModel>(
            BeatsFailure(error.code + (error.message ?? '')),
          ),
        );
  }

  @override
  Future<Either<Failure, void>> deleteBeat(String beatId) async {
    return beatsCollection
        .doc(beatId)
        .delete()
        .then((value) =>
            const Right<Failure, void>(null) as Either<Failure, void>)
        .onError(
          (FirebaseException error, stackTrace) => Left<Failure, BeatModel>(
            BeatsFailure(error.code + (error.message ?? '')),
          ),
        );
  }

  @override
  Future<Either<Failure, BeatModel>> getBeat(String beatId) async {
    return beatsCollection
        .doc(beatId)
        .get()
        .then(
          (value) => value.exists
              ? Right<Failure, BeatModel>(BeatModel.fromJson(value.data()!))
              : Left<Failure, BeatModel>(BeatsFailure('404 not found')),
        )
        .onError(
          (FirebaseException error, stackTrace) =>
              Left<Failure, BeatModel>(BeatsFailure(error.code)),
        );
  }

  @override
  Future<Either<Failure, List<BeatModel>>> getBeats({
    BeatModel? lastVisible,
    int limit = 25,
  }) async {
    final cursor = lastVisible == null
        ? beatsCollection.orderBy('beatId').limit(limit)
        : beatsCollection
            .orderBy('beatId')
            .limit(limit)
            .startAfter([lastVisible.beatId]);
    return cursor
        .get()
        .then(
          (snapshots) => Right<Failure, List<BeatModel>>(
            snapshots.docs
                .map((element) => BeatModel.fromJson(element.data()))
                .toList(growable: false),
          ) as Either<Failure, List<BeatModel>>,
        )
        .onError(
          (FirebaseException error, stackTrace) =>
              Left<Failure, List<BeatModel>>(
            BeatsFailure(error.code + (error.message ?? '')),
          ),
        );
  }

  @override
  Future<Either<Failure, BeatModel>> updateBeat(BeatModel beatModel) async {
    final beat = await getBeat(beatModel.beatId);
    return beat.fold(
      (l) => Left<Failure, BeatModel>(l),
      (r) => beatsCollection
          .doc(beatModel.beatId)
          .set(beatModel.toJson())
          .then((value) => getBeat(beatModel.beatId))
          .onError(
            (FirebaseException error, stackTrace) => Left<Failure, BeatModel>(
              BeatsFailure(error.code + (error.message ?? '')),
            ),
          ),
    );
  }
}
