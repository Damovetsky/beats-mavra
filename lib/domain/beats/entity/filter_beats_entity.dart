import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_beats_entity.freezed.dart';

@freezed
class FilterBeatsEntity with _$FilterBeatsEntity {
  const factory FilterBeatsEntity({
    List<String>? beatIds,
    List<String>? genres,
    int? temp,
    String? dimension,
  }) = _FilterBeatsEntity;
}
