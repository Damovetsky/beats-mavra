import 'beat_entity.dart';

enum BeatPlayingStatus {
  started,
  resumed,
  paused,
}

class PlayableBeatEntity {
  final BeatEntity entity;
  final BeatPlayingStatus status;

  PlayableBeatEntity({
    required this.entity,
    required this.status,
  });
}
