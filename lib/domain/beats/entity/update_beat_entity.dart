import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_beat_entity.freezed.dart';

@freezed
class UpdateBeatEntity with _$UpdateBeatEntity {
  const factory UpdateBeatEntity({
    required String cover,
    required String title,
    required String description,
    required String mp3,
    required String? wav,
    required String? zip,
    required List<String> genres,
    required int temp,
    required String dimension,
  }) = _UpdateBeatEntity;
}
