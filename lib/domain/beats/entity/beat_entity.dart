import 'package:freezed_annotation/freezed_annotation.dart';

part 'beat_entity.freezed.dart';

@freezed
class BeatEntity with _$BeatEntity {
  const factory BeatEntity({
    required String beatId,
    required String authorId,
    required String cover,
    required String title,
    required String description,
    required String mp3,
    required String wav,
    required String zip,
    required List<String> genres,
    required int temp,
    required String dimension,
}) = _BeatEntity;
}
