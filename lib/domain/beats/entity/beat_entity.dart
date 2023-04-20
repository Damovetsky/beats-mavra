import 'package:freezed_annotation/freezed_annotation.dart';

part 'beat_entity.freezed.dart';

@Freezed(equal: false)
class BeatEntity with _$BeatEntity {
  const factory BeatEntity({
    required String beatId,
    required String authorId,
    required String cover,
    required String title,
    required String description,
    required String mp3FileId,
    required String? wavFileId,
    required String? zipFileId,
    required List<String> genres,
    required int temp,
    required String dimension,
    required List<double> graph,
  }) = _BeatEntity;
}
