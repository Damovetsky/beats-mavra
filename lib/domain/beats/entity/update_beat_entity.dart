import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_beat_entity.freezed.dart';

@freezed
class UpdateBeatEntity with _$UpdateBeatEntity {
  const factory UpdateBeatEntity({
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
  }) = _UpdateBeatEntity;
}
