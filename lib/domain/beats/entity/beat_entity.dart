import 'package:freezed_annotation/freezed_annotation.dart';

part 'beat_entity.freezed.dart';
part 'beat_entity.g.dart';

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
    required String dimention,
  }) = _BeatEntity;

  factory BeatEntity.fromJson(Map<String, dynamic> json) => _$BeatEntityFromJson(json);
}

@freezed
class CreateBeat with _$CreateBeat {
  const factory CreateBeat({
    required String authorId,
    required String cover,
    required String title,
    required String description,
    required String mp3,
    required String wav,
    required String zip,
    required List<String> genres,
    required int temp,
    required String dimention,
}) = _CreateBeat;

  factory CreateBeat.fromJson(Map<String, dynamic> json) => _$CreateBeatFromJson(json);
}

@freezed
class UpdateBeat with _$UpdateBeat {
  const factory UpdateBeat({
    required String cover,
    required String title,
    required String description,
    required String mp3,
    required String wav,
    required String zip,
    required List<String> genres,
    required int temp,
    required String dimention,
}) = _UpdateBeat;

  factory UpdateBeat.fromJson(Map<String, dynamic> json) => _$UpdateBeatFromJson(json);
}
