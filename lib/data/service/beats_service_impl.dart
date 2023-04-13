import 'package:uuid/uuid.dart';

import '../../domain/beats/entity/beat_entity.dart';
import '../../domain/beats/service/beats_service.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseError extends Error {}

class BeatsFirbase implements BeatsService {
  final beatsCollection = FirebaseFirestore.instance.collection('beats');

  @override
  Future<BeatEntity> createBeat(CreateBeat createBeat) async {
    final jsonData = createBeat.toJson();
    jsonData['beatId'] = const Uuid().v4();

    await beatsCollection.doc(jsonData['beatId']).set(jsonData);
    return await getBeat(jsonData['beatId']);
  }

  @override
  Future<void> deleteBeat(String beatId) async {
    await beatsCollection.doc(beatId).delete();
  }

  @override
  Future<BeatEntity> getBeat(String beatId) async {
    return await beatsCollection.doc(beatId).get().then(
          (snapshot) => BeatEntity.fromJson(snapshot.data()!),
        );
  }

  @override
  Future<List<BeatEntity>> getBeats({
    BeatEntity? lastVisible,
    int limit = 25,
  }) async {
    final cursor = lastVisible == null
        ? beatsCollection.orderBy('beatId').limit(limit)
        : beatsCollection
            .orderBy('beatId')
            .limit(limit)
            .startAfter([lastVisible.beatId]);
    return await cursor.get().then((snapshots) =>
        snapshots.docs.map((element) => BeatEntity.fromJson(element.data())).toList(growable: false),);
  }

  @override
  Future<BeatEntity> updateBeat(String beatId, UpdateBeat updateBeat) async {
    final beat = await beatsCollection.doc(beatId).get().then(
          (snapshot) => BeatEntity.fromJson(snapshot.data()!),
        );
    final oldData = beat.toJson();
    final newData = updateBeat.toJson();
    newData['beatId'] = oldData['beatId'];
    newData['authorId'] = oldData['authorId'];
    await beatsCollection.doc(newData['beatId']).set(newData);
    return await getBeat(newData['beatId']);
  }
}
