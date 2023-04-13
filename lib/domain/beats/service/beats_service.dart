import '../entity/beat_entity.dart';

abstract class BeatsService {
  Future<List<BeatEntity>> getBeats({
    BeatEntity? lastVisible,
    int limit = 25,
  });
  Future<BeatEntity> createBeat(CreateBeat createBeat);
  Future<BeatEntity> getBeat(String beatId);
  Future<BeatEntity> updateBeat(String beatId, UpdateBeat updateBeat);
  Future<void> deleteBeat(String beatId);
}