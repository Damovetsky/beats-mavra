import 'package:freezed_annotation/freezed_annotation.dart';

part 'beat_model.freezed.dart';
part 'beat_model.g.dart';

@freezed
class BeatModel with _$BeatModel {
  const factory BeatModel({
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
  }) = _BeatModel;

  factory BeatModel.fromJson(Map<String, dynamic> json) => _$BeatModelFromJson(json);
}