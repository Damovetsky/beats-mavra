import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_beat_entity.freezed.dart';

@freezed
class CreateBeatEntity with _$CreateBeatEntity {
  const factory CreateBeatEntity({
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
  }) = _CreateBeatEntity;
}
