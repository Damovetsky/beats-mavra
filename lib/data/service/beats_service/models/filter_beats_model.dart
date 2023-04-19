import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_beats_model.freezed.dart';

@freezed
class FilterBeatsModel with _$FilterBeatsModel {
  const factory FilterBeatsModel({
    List<String>? beatsIds,
    List<String>? genres,
    int? temp,
    String? dimension,
  }) = _FilterBeatsModel;
}
