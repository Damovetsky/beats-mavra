import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import './models/beat_model.dart';
import './exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BeatsService {
  Future<List<BeatModel>> getBeats({
    BeatModel? lastVisible,
    int limit = 25,
  });

  Future<BeatModel> createBeat(BeatModel beatModel);

  Future<BeatModel> getBeat(String beatId);

  Future<BeatModel> updateBeat(BeatModel beatModel);

  Future<void> deleteBeat(String beatId);

  Future<List<double>> getGraph();
}

@Injectable(as: BeatsService)
class BeatsServiceImpl implements BeatsService {
  final FirebaseFirestore firestoreInstance;
  final BeatsExceptionFactory exceptionFactory;
  late CollectionReference<Map<String, dynamic>> beatsCollection;

  BeatsServiceImpl(this.firestoreInstance, this.exceptionFactory) {
    beatsCollection = firestoreInstance.collection('beats');
  }

  @override
  Future<BeatModel> createBeat(BeatModel beatModel) async {
    return beatsCollection
        .doc(beatModel.beatId)
        .set(beatModel.toJson())
        .then((value) => getBeat(beatModel.beatId))
        .onError(
          (FirebaseException error, stackTrace) =>
              throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<void> deleteBeat(String beatId) async {
    return beatsCollection.doc(beatId).delete().then((value) => null).onError(
          (FirebaseException error, stackTrace) =>
              throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<BeatModel> getBeat(String beatId) async {
    return beatsCollection
        .doc(beatId)
        .get()
        .then(
          (value) => value.exists
              ? BeatModel.fromJson(value.data()!)
              : throw exceptionFactory.generateException('not-found'),
        )
        .onError(
          (FirebaseException error, stackTrace) =>
              throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<List<BeatModel>> getBeats({
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
          (snapshots) => snapshots.docs
              .map((element) => BeatModel.fromJson(element.data()))
              .toList(growable: false),
        )
        .onError(
          (FirebaseException error, stackTrace) =>
              throw exceptionFactory.generateException(error.code),
        );
  }

  @override
  Future<BeatModel> updateBeat(BeatModel beatModel) async {
    return getBeat(beatModel.beatId).then(
      (value) => beatsCollection
          .doc(beatModel.beatId)
          .set(beatModel.toJson())
          .then((value) => getBeat(beatModel.beatId))
          .onError(
            (FirebaseException error, stackTrace) =>
                throw exceptionFactory.generateException(error.code),
          ),
    );
  }

  @override
  Future<List<double>> getGraph() {
    throw UnimplementedError();
  }
}
